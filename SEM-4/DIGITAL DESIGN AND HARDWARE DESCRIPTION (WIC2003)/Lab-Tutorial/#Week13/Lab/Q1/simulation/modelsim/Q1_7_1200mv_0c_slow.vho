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

-- DATE "05/15/2017 13:58:53"

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

ENTITY 	counter IS
    PORT (
	clock_50 : IN std_logic;
	ledr : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END counter;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_ledr : std_logic_vector(0 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ledr[0]~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \comp:count[29]~q\ : std_logic;
SIGNAL \comp:count[11]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \comp:count[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \comp:count[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \comp:count[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \comp:count[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \comp:count[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \comp:count[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \comp:count[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \comp:count[30]~q\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \count~10_combout\ : std_logic;
SIGNAL \comp:count[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \comp:count[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \comp:count[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \comp:count[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \comp:count[16]~q\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \comp:count[17]~q\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \comp:count[18]~q\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \comp:count[19]~q\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \comp:count[20]~q\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \comp:count[21]~q\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \comp:count[22]~q\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \comp:count[23]~q\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \comp:count[24]~q\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
SIGNAL \comp:count[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \comp:count[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \comp:count[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \comp:count[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \comp:count[25]~q\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \comp:count[26]~q\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \comp:count[27]~q\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \comp:count[28]~q\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \ledr~0_combout\ : std_logic;
SIGNAL \ledr~1_combout\ : std_logic;
SIGNAL \ledr~2_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \ledr~4_combout\ : std_logic;
SIGNAL \ledr~3_combout\ : std_logic;
SIGNAL \ledr~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \ledr~6_combout\ : std_logic;
SIGNAL \ledr[0]~reg0_q\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);

-- Location: IOOBUF_X69_Y73_N16
\ledr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ledr[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G4
\clock_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: FF_X97_Y64_N29
\comp:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[29]~q\);

-- Location: FF_X97_Y65_N25
\comp:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[11]~q\);

-- Location: LCCOMB_X97_Y65_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \comp:count[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\comp:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X97_Y65_N3
\comp:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[0]~q\);

-- Location: LCCOMB_X97_Y65_N4
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\comp:count[1]~q\ & (!\Add0~1\)) # (!\comp:count[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\comp:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X97_Y65_N5
\comp:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[1]~q\);

-- Location: LCCOMB_X97_Y65_N6
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\comp:count[2]~q\ & (\Add0~3\ $ (GND))) # (!\comp:count[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\comp:count[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X97_Y65_N7
\comp:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[2]~q\);

-- Location: LCCOMB_X97_Y65_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\comp:count[3]~q\ & (!\Add0~5\)) # (!\comp:count[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\comp:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X97_Y65_N9
\comp:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[3]~q\);

-- Location: LCCOMB_X97_Y65_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\comp:count[4]~q\ & (\Add0~7\ $ (GND))) # (!\comp:count[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\comp:count[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X97_Y65_N11
\comp:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[4]~q\);

-- Location: LCCOMB_X97_Y65_N12
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\comp:count[5]~q\ & (!\Add0~9\)) # (!\comp:count[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\comp:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X97_Y65_N13
\comp:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[5]~q\);

-- Location: LCCOMB_X97_Y65_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\comp:count[6]~q\ & (\Add0~11\ $ (GND))) # (!\comp:count[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\comp:count[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X97_Y65_N15
\comp:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[6]~q\);

-- Location: LCCOMB_X97_Y65_N16
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\comp:count[7]~q\ & (!\Add0~13\)) # (!\comp:count[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\comp:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X97_Y65_N24
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\comp:count[11]~q\ & (!\Add0~21\)) # (!\comp:count[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\comp:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X97_Y65_N26
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\comp:count[12]~q\ & (\Add0~23\ $ (GND))) # (!\comp:count[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\comp:count[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X96_Y64_N14
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Add0~26_combout\ & (\Add0~30_combout\ & (\Add0~28_combout\ & \Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~30_combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~24_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X97_Y64_N31
\comp:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[30]~q\);

-- Location: LCCOMB_X97_Y64_N28
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\comp:count[29]~q\ & (!\Add0~57\)) # (!\comp:count[29]~q\ & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!\comp:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[29]~q\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X97_Y64_N30
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = \comp:count[30]~q\ $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[30]~q\,
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: LCCOMB_X96_Y64_N24
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~52_combout\ & (!\Add0~58_combout\ & (!\Add0~56_combout\ & !\Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~58_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~54_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X96_Y64_N10
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add0~34_combout\ & (\Equal0~4_combout\ & (!\Add0~60_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~60_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X96_Y65_N12
\count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~10_combout\ = (\Add0~24_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Add0~24_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~10_combout\);

-- Location: FF_X96_Y65_N13
\comp:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[12]~q\);

-- Location: LCCOMB_X97_Y65_N28
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\comp:count[13]~q\ & (!\Add0~25\)) # (!\comp:count[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\comp:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X96_Y64_N22
\count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (\Add0~26_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Add0~26_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~9_combout\);

-- Location: FF_X96_Y64_N23
\comp:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[13]~q\);

-- Location: LCCOMB_X97_Y65_N30
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\comp:count[14]~q\ & (\Add0~27\ $ (GND))) # (!\comp:count[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\comp:count[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X96_Y64_N0
\count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (\Add0~28_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~9_combout\,
	datac => \Add0~28_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~8_combout\);

-- Location: FF_X96_Y64_N1
\comp:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[14]~q\);

-- Location: LCCOMB_X97_Y64_N0
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\comp:count[15]~q\ & (!\Add0~29\)) # (!\comp:count[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\comp:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X96_Y64_N26
\count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (\Add0~30_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Add0~30_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~7_combout\);

-- Location: FF_X96_Y64_N27
\comp:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[15]~q\);

-- Location: LCCOMB_X97_Y64_N2
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\comp:count[16]~q\ & (\Add0~31\ $ (GND))) # (!\comp:count[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\comp:count[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X97_Y64_N3
\comp:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[16]~q\);

-- Location: LCCOMB_X97_Y64_N4
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\comp:count[17]~q\ & (!\Add0~33\)) # (!\comp:count[17]~q\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\comp:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[17]~q\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X96_Y64_N8
\count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (\Add0~34_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Add0~34_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~6_combout\);

-- Location: FF_X96_Y64_N9
\comp:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[17]~q\);

-- Location: LCCOMB_X97_Y64_N6
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\comp:count[18]~q\ & (\Add0~35\ $ (GND))) # (!\comp:count[18]~q\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\comp:count[18]~q\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[18]~q\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X97_Y64_N7
\comp:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[18]~q\);

-- Location: LCCOMB_X97_Y64_N8
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\comp:count[19]~q\ & (!\Add0~37\)) # (!\comp:count[19]~q\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\comp:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[19]~q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X96_Y64_N18
\count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (\Add0~38_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Add0~38_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~5_combout\);

-- Location: FF_X96_Y64_N19
\comp:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[19]~q\);

-- Location: LCCOMB_X97_Y64_N10
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\comp:count[20]~q\ & (\Add0~39\ $ (GND))) # (!\comp:count[20]~q\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\comp:count[20]~q\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[20]~q\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X96_Y64_N16
\count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (\Add0~40_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Add0~40_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~4_combout\);

-- Location: FF_X96_Y64_N17
\comp:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[20]~q\);

-- Location: LCCOMB_X97_Y64_N12
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\comp:count[21]~q\ & (!\Add0~41\)) # (!\comp:count[21]~q\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\comp:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[21]~q\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X96_Y64_N2
\count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add0~42_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Add0~42_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~3_combout\);

-- Location: FF_X96_Y64_N3
\comp:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[21]~q\);

-- Location: LCCOMB_X97_Y64_N14
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\comp:count[22]~q\ & (\Add0~43\ $ (GND))) # (!\comp:count[22]~q\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\comp:count[22]~q\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[22]~q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X96_Y64_N28
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~44_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Add0~44_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~2_combout\);

-- Location: FF_X96_Y64_N29
\comp:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[22]~q\);

-- Location: LCCOMB_X97_Y64_N16
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\comp:count[23]~q\ & (!\Add0~45\)) # (!\comp:count[23]~q\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\comp:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[23]~q\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X96_Y64_N6
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~46_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Add0~46_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~1_combout\);

-- Location: FF_X96_Y64_N7
\comp:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[23]~q\);

-- Location: LCCOMB_X97_Y64_N18
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\comp:count[24]~q\ & (\Add0~47\ $ (GND))) # (!\comp:count[24]~q\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\comp:count[24]~q\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[24]~q\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X97_Y64_N19
\comp:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[24]~q\);

-- Location: LCCOMB_X97_Y64_N20
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\comp:count[25]~q\ & (!\Add0~49\)) # (!\comp:count[25]~q\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\comp:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[25]~q\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X96_Y64_N4
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~36_combout\ & (\Add0~14_combout\ & (!\Add0~32_combout\ & !\Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~48_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X96_Y64_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~38_combout\ & (\Add0~40_combout\ & (\Add0~42_combout\ & \Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Add0~40_combout\,
	datac => \Add0~42_combout\,
	datad => \Add0~44_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X96_Y64_N30
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Add0~50_combout\ & (\Add0~46_combout\ & (\Equal0~8_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~46_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X97_Y65_N0
\count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~11_combout\ = (\Add0~14_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~11_combout\);

-- Location: FF_X97_Y65_N1
\comp:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[7]~q\);

-- Location: LCCOMB_X97_Y65_N18
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\comp:count[8]~q\ & (\Add0~15\ $ (GND))) # (!\comp:count[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\comp:count[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X97_Y65_N19
\comp:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[8]~q\);

-- Location: LCCOMB_X97_Y65_N20
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\comp:count[9]~q\ & (!\Add0~17\)) # (!\comp:count[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\comp:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X97_Y65_N21
\comp:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[9]~q\);

-- Location: LCCOMB_X97_Y65_N22
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\comp:count[10]~q\ & (\Add0~19\ $ (GND))) # (!\comp:count[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\comp:count[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X97_Y65_N23
\comp:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[10]~q\);

-- Location: LCCOMB_X96_Y65_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~20_combout\ & (!\Add0~18_combout\ & !\Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~16_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X96_Y65_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~2_combout\ & (!\Add0~0_combout\ & (!\Add0~6_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X96_Y65_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~8_combout\ & (!\Add0~10_combout\ & (\Equal0~1_combout\ & !\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~12_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X96_Y65_N6
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~22_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X96_Y64_N20
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~50_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~9_combout\,
	datac => \Add0~50_combout\,
	datad => \Equal0~6_combout\,
	combout => \count~0_combout\);

-- Location: FF_X96_Y64_N21
\comp:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[25]~q\);

-- Location: LCCOMB_X97_Y64_N22
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\comp:count[26]~q\ & (\Add0~51\ $ (GND))) # (!\comp:count[26]~q\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\comp:count[26]~q\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[26]~q\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X97_Y64_N23
\comp:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[26]~q\);

-- Location: LCCOMB_X97_Y64_N24
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\comp:count[27]~q\ & (!\Add0~53\)) # (!\comp:count[27]~q\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\comp:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp:count[27]~q\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X97_Y64_N25
\comp:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[27]~q\);

-- Location: LCCOMB_X97_Y64_N26
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\comp:count[28]~q\ & (\Add0~55\ $ (GND))) # (!\comp:count[28]~q\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\comp:count[28]~q\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp:count[28]~q\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X97_Y64_N27
\comp:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp:count[28]~q\);

-- Location: LCCOMB_X95_Y64_N6
\ledr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledr~0_combout\ = (\Add0~52_combout\) # ((\Add0~48_combout\ & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datac => \Add0~50_combout\,
	datad => \Add0~52_combout\,
	combout => \ledr~0_combout\);

-- Location: LCCOMB_X95_Y64_N28
\ledr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledr~1_combout\ = (\Add0~54_combout\) # ((\Add0~56_combout\) # (\ledr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datac => \Add0~56_combout\,
	datad => \ledr~0_combout\,
	combout => \ledr~1_combout\);

-- Location: LCCOMB_X95_Y64_N30
\ledr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledr~2_combout\ = (\ledr[0]~reg0_q\ & ((\Add0~58_combout\) # ((\Add0~60_combout\) # (\ledr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \ledr[0]~reg0_q\,
	datac => \Add0~60_combout\,
	datad => \ledr~1_combout\,
	combout => \ledr~2_combout\);

-- Location: LCCOMB_X96_Y65_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\Add0~18_combout\) # ((\Add0~16_combout\) # ((\Add0~14_combout\) # (\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~20_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X95_Y64_N22
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Add0~12_combout\ & ((\Add0~8_combout\) # ((\Add0~10_combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~10_combout\,
	datad => \Equal0~1_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X96_Y65_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add0~22_combout\ & (\Add0~24_combout\ & (\Add0~28_combout\ & \Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~24_combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~26_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X95_Y64_N20
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\Add0~32_combout\ & (\LessThan0~0_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \Add0~32_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X95_Y64_N2
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\Add0~34_combout\) # ((\LessThan0~3_combout\) # ((\Add0~30_combout\ & \Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~30_combout\,
	datac => \Add0~32_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X95_Y64_N24
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\Add0~48_combout\ & (\Add0~36_combout\ & (\Equal0~0_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add0~36_combout\,
	datac => \Equal0~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X96_Y65_N8
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\Add0~22_combout\) # (((\Add0~14_combout\ & !\Equal0~2_combout\)) # (!\Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~22_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X95_Y64_N26
\ledr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledr~4_combout\ = (\Add0~34_combout\ & ((\Add0~32_combout\) # ((\Equal0~4_combout\ & \LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~32_combout\,
	datac => \Equal0~4_combout\,
	datad => \LessThan1~0_combout\,
	combout => \ledr~4_combout\);

-- Location: LCCOMB_X95_Y64_N4
\ledr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledr~3_combout\ = (\ledr[0]~reg0_q\ & (\Add0~46_combout\ & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledr[0]~reg0_q\,
	datac => \Add0~46_combout\,
	datad => \Add0~50_combout\,
	combout => \ledr~3_combout\);

-- Location: LCCOMB_X95_Y64_N8
\ledr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledr~5_combout\ = (\Equal0~0_combout\ & (\ledr~3_combout\ & ((\Add0~36_combout\) # (\ledr~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Equal0~0_combout\,
	datac => \ledr~4_combout\,
	datad => \ledr~3_combout\,
	combout => \ledr~5_combout\);

-- Location: LCCOMB_X95_Y64_N14
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\Add0~46_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \Add0~48_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X95_Y64_N12
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\Add0~50_combout\) # ((\LessThan0~6_combout\) # ((\Add0~60_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \LessThan0~6_combout\,
	datac => \Add0~60_combout\,
	datad => \Equal0~5_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X95_Y64_N16
\ledr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledr~6_combout\ = (\ledr~2_combout\) # ((\ledr~5_combout\) # ((!\LessThan0~5_combout\ & !\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledr~2_combout\,
	datab => \LessThan0~5_combout\,
	datac => \ledr~5_combout\,
	datad => \LessThan0~7_combout\,
	combout => \ledr~6_combout\);

-- Location: FF_X95_Y64_N17
\ledr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \ledr~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[0]~reg0_q\);

ww_ledr(0) <= \ledr[0]~output_o\;
END structure;


