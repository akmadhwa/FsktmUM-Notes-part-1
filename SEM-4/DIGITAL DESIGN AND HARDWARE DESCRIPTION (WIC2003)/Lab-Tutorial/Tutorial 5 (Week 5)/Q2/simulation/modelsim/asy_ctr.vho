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

-- DATE "03/22/2017 17:25:35"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
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

ENTITY 	asy_ctrGen IS
    PORT (
	r : IN std_logic;
	high_in : IN std_logic;
	clk : IN std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0);
	qbar : OUT std_logic_vector(3 DOWNTO 0)
	);
END asy_ctrGen;

-- Design Ports Information
-- q[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qbar[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qbar[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qbar[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qbar[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- high_in	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF asy_ctrGen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_high_in : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_qbar : std_logic_vector(3 DOWNTO 0);
SIGNAL \r~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \qbar[0]~output_o\ : std_logic;
SIGNAL \qbar[1]~output_o\ : std_logic;
SIGNAL \qbar[2]~output_o\ : std_logic;
SIGNAL \qbar[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \generate_n:0:FF|s_q~0_combout\ : std_logic;
SIGNAL \generate_n:0:FF|s_q~feeder_combout\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \r~inputclkctrl_outclk\ : std_logic;
SIGNAL \high_in~input_o\ : std_logic;
SIGNAL \generate_n:0:FF|s_q~q\ : std_logic;
SIGNAL \generate_n:1:FF|s_q~0_combout\ : std_logic;
SIGNAL \generate_n:1:FF|s_q~feeder_combout\ : std_logic;
SIGNAL \generate_n:1:FF|s_q~q\ : std_logic;
SIGNAL \generate_n:2:FF|s_q~0_combout\ : std_logic;
SIGNAL \generate_n:2:FF|s_q~feeder_combout\ : std_logic;
SIGNAL \generate_n:2:FF|s_q~q\ : std_logic;
SIGNAL \generate_n:3:FF|s_q~0_combout\ : std_logic;
SIGNAL \generate_n:3:FF|s_q~q\ : std_logic;
SIGNAL \ALT_INV_r~inputclkctrl_outclk\ : std_logic;
SIGNAL \generate_n:3:FF|ALT_INV_s_q~q\ : std_logic;
SIGNAL \generate_n:2:FF|ALT_INV_s_q~q\ : std_logic;
SIGNAL \generate_n:1:FF|ALT_INV_s_q~q\ : std_logic;
SIGNAL \generate_n:0:FF|ALT_INV_s_q~q\ : std_logic;

BEGIN

ww_r <= r;
ww_high_in <= high_in;
ww_clk <= clk;
q <= ww_q;
qbar <= ww_qbar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \r~input_o\);
\ALT_INV_r~inputclkctrl_outclk\ <= NOT \r~inputclkctrl_outclk\;
\generate_n:3:FF|ALT_INV_s_q~q\ <= NOT \generate_n:3:FF|s_q~q\;
\generate_n:2:FF|ALT_INV_s_q~q\ <= NOT \generate_n:2:FF|s_q~q\;
\generate_n:1:FF|ALT_INV_s_q~q\ <= NOT \generate_n:1:FF|s_q~q\;
\generate_n:0:FF|ALT_INV_s_q~q\ <= NOT \generate_n:0:FF|s_q~q\;

-- Location: IOOBUF_X18_Y24_N16
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_n:0:FF|s_q~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_n:1:FF|s_q~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_n:2:FF|s_q~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_n:3:FF|s_q~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\qbar[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_n:0:FF|ALT_INV_s_q~q\,
	devoe => ww_devoe,
	o => \qbar[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\qbar[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_n:1:FF|ALT_INV_s_q~q\,
	devoe => ww_devoe,
	o => \qbar[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\qbar[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_n:2:FF|ALT_INV_s_q~q\,
	devoe => ww_devoe,
	o => \qbar[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\qbar[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_n:3:FF|ALT_INV_s_q~q\,
	devoe => ww_devoe,
	o => \qbar[3]~output_o\);

-- Location: IOIBUF_X30_Y24_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X29_Y23_N18
\generate_n:0:FF|s_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_n:0:FF|s_q~0_combout\ = !\generate_n:0:FF|s_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generate_n:0:FF|s_q~q\,
	combout => \generate_n:0:FF|s_q~0_combout\);

-- Location: LCCOMB_X29_Y23_N10
\generate_n:0:FF|s_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_n:0:FF|s_q~feeder_combout\ = \generate_n:0:FF|s_q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_n:0:FF|s_q~0_combout\,
	combout => \generate_n:0:FF|s_q~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N8
\r~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: CLKCTRL_G2
\r~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \r~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \r~inputclkctrl_outclk\);

-- Location: IOIBUF_X30_Y24_N22
\high_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_high_in,
	o => \high_in~input_o\);

-- Location: FF_X29_Y23_N11
\generate_n:0:FF|s_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \generate_n:0:FF|s_q~feeder_combout\,
	clrn => \ALT_INV_r~inputclkctrl_outclk\,
	ena => \high_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generate_n:0:FF|s_q~q\);

-- Location: LCCOMB_X29_Y23_N28
\generate_n:1:FF|s_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_n:1:FF|s_q~0_combout\ = !\generate_n:1:FF|s_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \generate_n:1:FF|s_q~q\,
	combout => \generate_n:1:FF|s_q~0_combout\);

-- Location: LCCOMB_X29_Y23_N14
\generate_n:1:FF|s_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_n:1:FF|s_q~feeder_combout\ = \generate_n:1:FF|s_q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_n:1:FF|s_q~0_combout\,
	combout => \generate_n:1:FF|s_q~feeder_combout\);

-- Location: FF_X29_Y23_N15
\generate_n:1:FF|s_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generate_n:0:FF|ALT_INV_s_q~q\,
	d => \generate_n:1:FF|s_q~feeder_combout\,
	clrn => \ALT_INV_r~inputclkctrl_outclk\,
	ena => \high_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generate_n:1:FF|s_q~q\);

-- Location: LCCOMB_X28_Y23_N18
\generate_n:2:FF|s_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_n:2:FF|s_q~0_combout\ = !\generate_n:2:FF|s_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generate_n:2:FF|s_q~q\,
	combout => \generate_n:2:FF|s_q~0_combout\);

-- Location: LCCOMB_X28_Y23_N28
\generate_n:2:FF|s_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_n:2:FF|s_q~feeder_combout\ = \generate_n:2:FF|s_q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generate_n:2:FF|s_q~0_combout\,
	combout => \generate_n:2:FF|s_q~feeder_combout\);

-- Location: FF_X28_Y23_N29
\generate_n:2:FF|s_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generate_n:1:FF|ALT_INV_s_q~q\,
	d => \generate_n:2:FF|s_q~feeder_combout\,
	clrn => \ALT_INV_r~inputclkctrl_outclk\,
	ena => \high_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generate_n:2:FF|s_q~q\);

-- Location: LCCOMB_X28_Y23_N22
\generate_n:3:FF|s_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_n:3:FF|s_q~0_combout\ = !\generate_n:3:FF|s_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generate_n:3:FF|s_q~q\,
	combout => \generate_n:3:FF|s_q~0_combout\);

-- Location: FF_X28_Y23_N23
\generate_n:3:FF|s_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generate_n:2:FF|ALT_INV_s_q~q\,
	d => \generate_n:3:FF|s_q~0_combout\,
	clrn => \ALT_INV_r~inputclkctrl_outclk\,
	ena => \high_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generate_n:3:FF|s_q~q\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_qbar(0) <= \qbar[0]~output_o\;

ww_qbar(1) <= \qbar[1]~output_o\;

ww_qbar(2) <= \qbar[2]~output_o\;

ww_qbar(3) <= \qbar[3]~output_o\;
END structure;


