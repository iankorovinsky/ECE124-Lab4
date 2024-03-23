-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "03/22/2024 17:36:37"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic;
	sim_sm_clken : OUT std_logic;
	sim_blink_sig : OUT std_logic;
	sim_ns_green : OUT std_logic;
	sim_ns_amber : OUT std_logic;
	sim_ns_red : OUT std_logic;
	sim_ew_green : OUT std_logic;
	sim_ew_amber : OUT std_logic;
	sim_ew_red : OUT std_logic
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL ww_sim_sm_clken : std_logic;
SIGNAL ww_sim_blink_sig : std_logic;
SIGNAL ww_sim_ns_green : std_logic;
SIGNAL ww_sim_ns_amber : std_logic;
SIGNAL ww_sim_ns_red : std_logic;
SIGNAL ww_sim_ew_green : std_logic;
SIGNAL ww_sim_ew_amber : std_logic;
SIGNAL ww_sim_ew_red : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \sim_sm_clken~output_o\ : std_logic;
SIGNAL \sim_blink_sig~output_o\ : std_logic;
SIGNAL \sim_ns_green~output_o\ : std_logic;
SIGNAL \sim_ns_amber~output_o\ : std_logic;
SIGNAL \sim_ns_red~output_o\ : std_logic;
SIGNAL \sim_ew_green~output_o\ : std_logic;
SIGNAL \sim_ew_amber~output_o\ : std_logic;
SIGNAL \sim_ew_red~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \INST0|pb_n_filtered[0]~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \INST0|rst_n_filtered~0_combout\ : std_logic;
SIGNAL \INSTMID|sreg~0_combout\ : std_logic;
SIGNAL \INSTNS|sreg~0_combout\ : std_logic;
SIGNAL \INSTNSHOLDREG|d~0_combout\ : std_logic;
SIGNAL \INSTNSHOLDREG|dout~q\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \INST0|pb_n_filtered[1]~1_combout\ : std_logic;
SIGNAL \INSTEW|sreg~0_combout\ : std_logic;
SIGNAL \INSTEWHOLDREG|d~0_combout\ : std_logic;
SIGNAL \INSTEWHOLDREG|dout~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[0]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[0]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \INST3|clk_reg_extend~0_combout\ : std_logic;
SIGNAL \INST3|clk_reg_extend~1_combout\ : std_logic;
SIGNAL \INST3|sm_clken~combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~48_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S15~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~45_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S0~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|next_state.S1~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~35_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S1~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|next_state.S2~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S2~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~34_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S3~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~36_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S4~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~37_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S5~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr4~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~41_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~42_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S6~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~47_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S7~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~46_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S8~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|next_state.S9~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S9~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|next_state.S10~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S10~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~38_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S11~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~39_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S12~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~40_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S13~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr7~1_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~43_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state~44_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|current_state.S14~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \INSTLIGHTS|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|ns_amber~0_combout\ : std_logic;
SIGNAL \INSTLIGHTS|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr2~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr6~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr9~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr8~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr9~combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr8~1_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr8~combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr7~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr7~combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|WideOr4~combout\ : std_logic;
SIGNAL \INSTLIGHTS|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST3|blink_sig~0_combout\ : std_logic;
SIGNAL \INST3|blink_sig~q\ : std_logic;
SIGNAL \INSTSTATEMACHINE|Selector2~2_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|Selector3~2_combout\ : std_logic;
SIGNAL \INSTLIGHTS|DOUT[3]~1_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|ew_amber~combout\ : std_logic;
SIGNAL \INST0|sreg4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INSTMID|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INSTNS|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INSTEW|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST3|clk_reg_extend\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST0|sreg0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST0|sreg1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INSTSTATEMACHINE|ALT_INV_ns_amber~0_combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \INSTSTATEMACHINE|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \INSTLIGHTS|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
sim_sm_clken <= ww_sim_sm_clken;
sim_blink_sig <= ww_sim_blink_sig;
sim_ns_green <= ww_sim_ns_green;
sim_ns_amber <= ww_sim_ns_amber;
sim_ns_red <= ww_sim_ns_red;
sim_ew_green <= ww_sim_ew_green;
sim_ew_amber <= ww_sim_ew_amber;
sim_ew_red <= ww_sim_ew_red;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\INSTSTATEMACHINE|ALT_INV_ns_amber~0_combout\ <= NOT \INSTSTATEMACHINE|ns_amber~0_combout\;
\INSTSTATEMACHINE|ALT_INV_WideOr4~combout\ <= NOT \INSTSTATEMACHINE|WideOr4~combout\;
\INSTSTATEMACHINE|ALT_INV_WideOr7~combout\ <= NOT \INSTSTATEMACHINE|WideOr7~combout\;
\INSTSTATEMACHINE|ALT_INV_WideOr8~combout\ <= NOT \INSTSTATEMACHINE|WideOr8~combout\;
\INSTSTATEMACHINE|ALT_INV_WideOr9~combout\ <= NOT \INSTSTATEMACHINE|WideOr9~combout\;
\INSTSTATEMACHINE|ALT_INV_WideOr2~0_combout\ <= NOT \INSTSTATEMACHINE|WideOr2~0_combout\;
\INSTLIGHTS|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \INSTLIGHTS|clk_proc:COUNT[10]~q\;

\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INSTLIGHTS|DOUT_TEMP[6]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTNSHOLDREG|dout~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTEWHOLDREG|dout~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|ALT_INV_WideOr9~combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTLIGHTS|DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTLIGHTS|DOUT[3]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTLIGHTS|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTLIGHTS|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

\sim_sm_clken~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|sm_clken~combout\,
	devoe => ww_devoe,
	o => \sim_sm_clken~output_o\);

\sim_blink_sig~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|blink_sig~q\,
	devoe => ww_devoe,
	o => \sim_blink_sig~output_o\);

\sim_ns_green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|Selector2~2_combout\,
	devoe => ww_devoe,
	o => \sim_ns_green~output_o\);

\sim_ns_amber~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|ALT_INV_ns_amber~0_combout\,
	devoe => ww_devoe,
	o => \sim_ns_amber~output_o\);

\sim_ns_red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \sim_ns_red~output_o\);

\sim_ew_green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|Selector3~2_combout\,
	devoe => ww_devoe,
	o => \sim_ew_green~output_o\);

\sim_ew_amber~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|ew_amber~combout\,
	devoe => ww_devoe,
	o => \sim_ew_amber~output_o\);

\sim_ew_red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTSTATEMACHINE|WideOr4~combout\,
	devoe => ww_devoe,
	o => \sim_ew_red~output_o\);

\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

\INST0|sreg0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(0));

\INST0|sreg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg0\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(1));

\INST0|sreg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg0\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(2));

\INST0|sreg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg0\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(3));

\INST0|pb_n_filtered[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|pb_n_filtered[0]~0_combout\ = (!\INST0|sreg0\(1) & (!\INST0|sreg0\(2) & !\INST0|sreg0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST0|sreg0\(1),
	datab => \INST0|sreg0\(2),
	datac => \INST0|sreg0\(3),
	combout => \INST0|pb_n_filtered[0]~0_combout\);

\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

\INST0|sreg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(0));

\INST0|sreg4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg4\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(1));

\INST0|sreg4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(2));

\INST0|sreg4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg4\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(3));

\INST0|rst_n_filtered~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|rst_n_filtered~0_combout\ = (!\INST0|sreg4\(1) & (!\INST0|sreg4\(2) & !\INST0|sreg4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST0|sreg4\(1),
	datab => \INST0|sreg4\(2),
	datac => \INST0|sreg4\(3),
	combout => \INST0|rst_n_filtered~0_combout\);

\INSTMID|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|rst_n_filtered~0_combout\,
	sclr => \INSTMID|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMID|sreg\(0));

\INSTMID|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMID|sreg~0_combout\ = (\INSTMID|sreg\(0) & !\INSTMID|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMID|sreg\(0),
	datad => \INSTMID|sreg\(1),
	combout => \INSTMID|sreg~0_combout\);

\INSTMID|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTMID|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMID|sreg\(1));

\INSTNS|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|pb_n_filtered[0]~0_combout\,
	sclr => \INSTMID|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTNS|sreg\(0));

\INSTNS|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTNS|sreg~0_combout\ = (\INSTNS|sreg\(0) & !\INSTMID|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTNS|sreg\(0),
	datad => \INSTMID|sreg\(1),
	combout => \INSTNS|sreg~0_combout\);

\INSTNS|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTNS|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTNS|sreg\(1));

\INSTNSHOLDREG|d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTNSHOLDREG|d~0_combout\ = (!\INSTSTATEMACHINE|current_state.S6~q\ & (!\INSTMID|sreg\(1) & ((\INSTNSHOLDREG|dout~q\) # (\INSTNS|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTNSHOLDREG|dout~q\,
	datab => \INSTNS|sreg\(1),
	datac => \INSTSTATEMACHINE|current_state.S6~q\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTNSHOLDREG|d~0_combout\);

\INSTNSHOLDREG|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTNSHOLDREG|d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTNSHOLDREG|dout~q\);

\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

\INST0|sreg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(0));

\INST0|sreg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(1));

\INST0|sreg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(2));

\INST0|sreg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(3));

\INST0|pb_n_filtered[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|pb_n_filtered[1]~1_combout\ = (!\INST0|sreg1\(1) & (!\INST0|sreg1\(2) & !\INST0|sreg1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST0|sreg1\(1),
	datab => \INST0|sreg1\(2),
	datac => \INST0|sreg1\(3),
	combout => \INST0|pb_n_filtered[1]~1_combout\);

\INSTEW|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|pb_n_filtered[1]~1_combout\,
	sclr => \INSTMID|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTEW|sreg\(0));

\INSTEW|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTEW|sreg~0_combout\ = (\INSTEW|sreg\(0) & !\INSTMID|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTEW|sreg\(0),
	datad => \INSTMID|sreg\(1),
	combout => \INSTEW|sreg~0_combout\);

\INSTEW|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTEW|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTEW|sreg\(1));

\INSTEWHOLDREG|d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTEWHOLDREG|d~0_combout\ = (!\INSTSTATEMACHINE|current_state.S14~q\ & (!\INSTMID|sreg\(1) & ((\INSTEWHOLDREG|dout~q\) # (\INSTEW|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTEWHOLDREG|dout~q\,
	datab => \INSTEW|sreg\(1),
	datac => \INSTSTATEMACHINE|current_state.S14~q\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTEWHOLDREG|d~0_combout\);

\INSTEWHOLDREG|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTEWHOLDREG|d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTEWHOLDREG|dout~q\);

\INST3|clk_divider:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[0]~1_combout\ = \INST3|clk_divider:counter[0]~q\ $ (VCC)
-- \INST3|clk_divider:counter[0]~2\ = CARRY(\INST3|clk_divider:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \INST3|clk_divider:counter[0]~1_combout\,
	cout => \INST3|clk_divider:counter[0]~2\);

\INST3|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[0]~1_combout\,
	sclr => \INSTMID|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[0]~q\);

\INST3|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[1]~1_combout\ = (\INST3|clk_divider:counter[1]~q\ & (!\INST3|clk_divider:counter[0]~2\)) # (!\INST3|clk_divider:counter[1]~q\ & ((\INST3|clk_divider:counter[0]~2\) # (GND)))
-- \INST3|clk_divider:counter[1]~2\ = CARRY((!\INST3|clk_divider:counter[0]~2\) # (!\INST3|clk_divider:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[1]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[0]~2\,
	combout => \INST3|clk_divider:counter[1]~1_combout\,
	cout => \INST3|clk_divider:counter[1]~2\);

\INST3|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[1]~1_combout\,
	sclr => \INSTMID|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[1]~q\);

\INST3|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[2]~1_combout\ = (\INST3|clk_divider:counter[2]~q\ & (\INST3|clk_divider:counter[1]~2\ $ (GND))) # (!\INST3|clk_divider:counter[2]~q\ & (!\INST3|clk_divider:counter[1]~2\ & VCC))
-- \INST3|clk_divider:counter[2]~2\ = CARRY((\INST3|clk_divider:counter[2]~q\ & !\INST3|clk_divider:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[1]~2\,
	combout => \INST3|clk_divider:counter[2]~1_combout\,
	cout => \INST3|clk_divider:counter[2]~2\);

\INST3|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[2]~1_combout\,
	sclr => \INSTMID|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[2]~q\);

\INST3|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[3]~1_combout\ = (\INST3|clk_divider:counter[3]~q\ & (!\INST3|clk_divider:counter[2]~2\)) # (!\INST3|clk_divider:counter[3]~q\ & ((\INST3|clk_divider:counter[2]~2\) # (GND)))
-- \INST3|clk_divider:counter[3]~2\ = CARRY((!\INST3|clk_divider:counter[2]~2\) # (!\INST3|clk_divider:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[2]~2\,
	combout => \INST3|clk_divider:counter[3]~1_combout\,
	cout => \INST3|clk_divider:counter[3]~2\);

\INST3|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[3]~1_combout\,
	sclr => \INSTMID|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[3]~q\);

\INST3|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[4]~1_combout\ = \INST3|clk_divider:counter[4]~q\ $ (!\INST3|clk_divider:counter[3]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[4]~q\,
	cin => \INST3|clk_divider:counter[3]~2\,
	combout => \INST3|clk_divider:counter[4]~1_combout\);

\INST3|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[4]~1_combout\,
	sclr => \INSTMID|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[4]~q\);

\INST3|clk_reg_extend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_reg_extend~0_combout\ = (\INST3|clk_divider:counter[4]~q\ & !\INSTMID|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[4]~q\,
	datad => \INSTMID|sreg\(1),
	combout => \INST3|clk_reg_extend~0_combout\);

\INST3|clk_reg_extend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_reg_extend~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_reg_extend\(0));

\INST3|clk_reg_extend~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_reg_extend~1_combout\ = (\INST3|clk_reg_extend\(0) & !\INSTMID|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_reg_extend\(0),
	datad => \INSTMID|sreg\(1),
	combout => \INST3|clk_reg_extend~1_combout\);

\INST3|clk_reg_extend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_reg_extend~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_reg_extend\(1));

\INST3|sm_clken\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|sm_clken~combout\ = (\INST3|clk_reg_extend\(0) & !\INST3|clk_reg_extend\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_reg_extend\(0),
	datad => \INST3|clk_reg_extend\(1),
	combout => \INST3|sm_clken~combout\);

\INSTSTATEMACHINE|current_state~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~48_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state.S14~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S15~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S14~q\,
	datab => \INSTSTATEMACHINE|current_state.S15~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~48_combout\);

\INSTSTATEMACHINE|current_state.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S15~q\);

\INSTSTATEMACHINE|current_state~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~45_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (!\INSTSTATEMACHINE|current_state.S15~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMID|sreg\(1),
	datab => \INSTSTATEMACHINE|current_state.S15~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTSTATEMACHINE|current_state.S0~q\,
	combout => \INSTSTATEMACHINE|current_state~45_combout\);

\INSTSTATEMACHINE|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S0~q\);

\INSTSTATEMACHINE|next_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|next_state.S1~0_combout\ = (!\INSTSTATEMACHINE|current_state.S0~q\ & ((\INSTNSHOLDREG|dout~q\) # (!\INSTEWHOLDREG|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTNSHOLDREG|dout~q\,
	datac => \INSTEWHOLDREG|dout~q\,
	datad => \INSTSTATEMACHINE|current_state.S0~q\,
	combout => \INSTSTATEMACHINE|next_state.S1~0_combout\);

\INSTSTATEMACHINE|current_state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~35_combout\ = (\INSTMID|sreg\(1)) # ((\INST3|clk_reg_extend\(0) & !\INST3|clk_reg_extend\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMID|sreg\(1),
	datab => \INST3|clk_reg_extend\(0),
	datad => \INST3|clk_reg_extend\(1),
	combout => \INSTSTATEMACHINE|current_state~35_combout\);

\INSTSTATEMACHINE|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|next_state.S1~0_combout\,
	sclr => \INSTMID|sreg\(1),
	ena => \INSTSTATEMACHINE|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S1~q\);

\INSTSTATEMACHINE|next_state.S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|next_state.S2~0_combout\ = (\INSTSTATEMACHINE|current_state.S1~q\ & ((\INSTNSHOLDREG|dout~q\) # (!\INSTEWHOLDREG|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S1~q\,
	datab => \INSTNSHOLDREG|dout~q\,
	datad => \INSTEWHOLDREG|dout~q\,
	combout => \INSTSTATEMACHINE|next_state.S2~0_combout\);

\INSTSTATEMACHINE|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|next_state.S2~0_combout\,
	sclr => \INSTMID|sreg\(1),
	ena => \INSTSTATEMACHINE|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S2~q\);

\INSTSTATEMACHINE|current_state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~34_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state.S2~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S2~q\,
	datab => \INSTSTATEMACHINE|current_state.S3~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~34_combout\);

\INSTSTATEMACHINE|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S3~q\);

\INSTSTATEMACHINE|current_state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~36_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state.S3~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S3~q\,
	datab => \INSTSTATEMACHINE|current_state.S4~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~36_combout\);

\INSTSTATEMACHINE|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S4~q\);

\INSTSTATEMACHINE|current_state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~37_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state.S4~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S4~q\,
	datab => \INSTSTATEMACHINE|current_state.S5~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~37_combout\);

\INSTSTATEMACHINE|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S5~q\);

\INSTSTATEMACHINE|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr4~0_combout\ = (\INSTSTATEMACHINE|current_state.S0~q\ & !\INSTSTATEMACHINE|current_state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S0~q\,
	datad => \INSTSTATEMACHINE|current_state.S1~q\,
	combout => \INSTSTATEMACHINE|WideOr4~0_combout\);

\INSTSTATEMACHINE|current_state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~41_combout\ = (\INSTSTATEMACHINE|current_state.S5~q\) # ((\INSTEWHOLDREG|dout~q\ & (!\INSTNSHOLDREG|dout~q\ & !\INSTSTATEMACHINE|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S5~q\,
	datab => \INSTEWHOLDREG|dout~q\,
	datac => \INSTNSHOLDREG|dout~q\,
	datad => \INSTSTATEMACHINE|WideOr4~0_combout\,
	combout => \INSTSTATEMACHINE|current_state~41_combout\);

\INSTSTATEMACHINE|current_state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~42_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state~41_combout\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state~41_combout\,
	datab => \INSTSTATEMACHINE|current_state.S6~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~42_combout\);

\INSTSTATEMACHINE|current_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S6~q\);

\INSTSTATEMACHINE|current_state~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~47_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state.S6~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S6~q\,
	datab => \INSTSTATEMACHINE|current_state.S7~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~47_combout\);

\INSTSTATEMACHINE|current_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S7~q\);

\INSTSTATEMACHINE|current_state~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~46_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state.S7~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S7~q\,
	datab => \INSTSTATEMACHINE|current_state.S8~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~46_combout\);

\INSTSTATEMACHINE|current_state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S8~q\);

\INSTSTATEMACHINE|next_state.S9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|next_state.S9~0_combout\ = (\INSTSTATEMACHINE|current_state.S8~q\ & ((\INSTEWHOLDREG|dout~q\) # (!\INSTNSHOLDREG|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S8~q\,
	datab => \INSTEWHOLDREG|dout~q\,
	datad => \INSTNSHOLDREG|dout~q\,
	combout => \INSTSTATEMACHINE|next_state.S9~0_combout\);

\INSTSTATEMACHINE|current_state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|next_state.S9~0_combout\,
	sclr => \INSTMID|sreg\(1),
	ena => \INSTSTATEMACHINE|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S9~q\);

\INSTSTATEMACHINE|next_state.S10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|next_state.S10~0_combout\ = (\INSTSTATEMACHINE|current_state.S9~q\ & ((\INSTEWHOLDREG|dout~q\) # (!\INSTNSHOLDREG|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S9~q\,
	datab => \INSTEWHOLDREG|dout~q\,
	datad => \INSTNSHOLDREG|dout~q\,
	combout => \INSTSTATEMACHINE|next_state.S10~0_combout\);

\INSTSTATEMACHINE|current_state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|next_state.S10~0_combout\,
	sclr => \INSTMID|sreg\(1),
	ena => \INSTSTATEMACHINE|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S10~q\);

\INSTSTATEMACHINE|current_state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~38_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state.S10~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S11~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S10~q\,
	datab => \INSTSTATEMACHINE|current_state.S11~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~38_combout\);

\INSTSTATEMACHINE|current_state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S11~q\);

\INSTSTATEMACHINE|current_state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~39_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state.S11~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S12~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S11~q\,
	datab => \INSTSTATEMACHINE|current_state.S12~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~39_combout\);

\INSTSTATEMACHINE|current_state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S12~q\);

\INSTSTATEMACHINE|current_state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~40_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state.S12~q\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S13~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S12~q\,
	datab => \INSTSTATEMACHINE|current_state.S13~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~40_combout\);

\INSTSTATEMACHINE|current_state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S13~q\);

\INSTSTATEMACHINE|WideOr7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr7~1_combout\ = (!\INSTSTATEMACHINE|current_state.S8~q\ & !\INSTSTATEMACHINE|current_state.S9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTSTATEMACHINE|current_state.S8~q\,
	datad => \INSTSTATEMACHINE|current_state.S9~q\,
	combout => \INSTSTATEMACHINE|WideOr7~1_combout\);

\INSTSTATEMACHINE|current_state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~43_combout\ = (\INSTSTATEMACHINE|current_state.S13~q\) # ((\INSTNSHOLDREG|dout~q\ & (!\INSTEWHOLDREG|dout~q\ & !\INSTSTATEMACHINE|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S13~q\,
	datab => \INSTNSHOLDREG|dout~q\,
	datac => \INSTEWHOLDREG|dout~q\,
	datad => \INSTSTATEMACHINE|WideOr7~1_combout\,
	combout => \INSTSTATEMACHINE|current_state~43_combout\);

\INSTSTATEMACHINE|current_state~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|current_state~44_combout\ = (!\INSTMID|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INSTSTATEMACHINE|current_state~43_combout\)) # (!\INST3|sm_clken~combout\ & ((\INSTSTATEMACHINE|current_state.S14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state~43_combout\,
	datab => \INSTSTATEMACHINE|current_state.S14~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INSTMID|sreg\(1),
	combout => \INSTSTATEMACHINE|current_state~44_combout\);

\INSTSTATEMACHINE|current_state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTSTATEMACHINE|current_state~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTSTATEMACHINE|current_state.S14~q\);

\INSTLIGHTS|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[0]~0_combout\ = !\INSTLIGHTS|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[0]~q\,
	combout => \INSTLIGHTS|clk_proc:COUNT[0]~0_combout\);

\INSTLIGHTS|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[0]~q\);

\INSTLIGHTS|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[1]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[1]~q\ & (\INSTLIGHTS|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\INSTLIGHTS|clk_proc:COUNT[1]~q\ & (\INSTLIGHTS|clk_proc:COUNT[0]~q\ & VCC))
-- \INSTLIGHTS|clk_proc:COUNT[1]~2\ = CARRY((\INSTLIGHTS|clk_proc:COUNT[1]~q\ & \INSTLIGHTS|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[1]~q\,
	datab => \INSTLIGHTS|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \INSTLIGHTS|clk_proc:COUNT[1]~1_combout\,
	cout => \INSTLIGHTS|clk_proc:COUNT[1]~2\);

\INSTLIGHTS|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[1]~q\);

\INSTLIGHTS|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[2]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[2]~q\ & (!\INSTLIGHTS|clk_proc:COUNT[1]~2\)) # (!\INSTLIGHTS|clk_proc:COUNT[2]~q\ & ((\INSTLIGHTS|clk_proc:COUNT[1]~2\) # (GND)))
-- \INSTLIGHTS|clk_proc:COUNT[2]~2\ = CARRY((!\INSTLIGHTS|clk_proc:COUNT[1]~2\) # (!\INSTLIGHTS|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \INSTLIGHTS|clk_proc:COUNT[1]~2\,
	combout => \INSTLIGHTS|clk_proc:COUNT[2]~1_combout\,
	cout => \INSTLIGHTS|clk_proc:COUNT[2]~2\);

\INSTLIGHTS|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[2]~q\);

\INSTLIGHTS|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[3]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[3]~q\ & (\INSTLIGHTS|clk_proc:COUNT[2]~2\ $ (GND))) # (!\INSTLIGHTS|clk_proc:COUNT[3]~q\ & (!\INSTLIGHTS|clk_proc:COUNT[2]~2\ & VCC))
-- \INSTLIGHTS|clk_proc:COUNT[3]~2\ = CARRY((\INSTLIGHTS|clk_proc:COUNT[3]~q\ & !\INSTLIGHTS|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \INSTLIGHTS|clk_proc:COUNT[2]~2\,
	combout => \INSTLIGHTS|clk_proc:COUNT[3]~1_combout\,
	cout => \INSTLIGHTS|clk_proc:COUNT[3]~2\);

\INSTLIGHTS|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[3]~q\);

\INSTLIGHTS|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[4]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[4]~q\ & (!\INSTLIGHTS|clk_proc:COUNT[3]~2\)) # (!\INSTLIGHTS|clk_proc:COUNT[4]~q\ & ((\INSTLIGHTS|clk_proc:COUNT[3]~2\) # (GND)))
-- \INSTLIGHTS|clk_proc:COUNT[4]~2\ = CARRY((!\INSTLIGHTS|clk_proc:COUNT[3]~2\) # (!\INSTLIGHTS|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \INSTLIGHTS|clk_proc:COUNT[3]~2\,
	combout => \INSTLIGHTS|clk_proc:COUNT[4]~1_combout\,
	cout => \INSTLIGHTS|clk_proc:COUNT[4]~2\);

\INSTLIGHTS|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[4]~q\);

\INSTLIGHTS|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[5]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[5]~q\ & (\INSTLIGHTS|clk_proc:COUNT[4]~2\ $ (GND))) # (!\INSTLIGHTS|clk_proc:COUNT[5]~q\ & (!\INSTLIGHTS|clk_proc:COUNT[4]~2\ & VCC))
-- \INSTLIGHTS|clk_proc:COUNT[5]~2\ = CARRY((\INSTLIGHTS|clk_proc:COUNT[5]~q\ & !\INSTLIGHTS|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \INSTLIGHTS|clk_proc:COUNT[4]~2\,
	combout => \INSTLIGHTS|clk_proc:COUNT[5]~1_combout\,
	cout => \INSTLIGHTS|clk_proc:COUNT[5]~2\);

\INSTLIGHTS|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[5]~q\);

\INSTLIGHTS|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[6]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[6]~q\ & (!\INSTLIGHTS|clk_proc:COUNT[5]~2\)) # (!\INSTLIGHTS|clk_proc:COUNT[6]~q\ & ((\INSTLIGHTS|clk_proc:COUNT[5]~2\) # (GND)))
-- \INSTLIGHTS|clk_proc:COUNT[6]~2\ = CARRY((!\INSTLIGHTS|clk_proc:COUNT[5]~2\) # (!\INSTLIGHTS|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \INSTLIGHTS|clk_proc:COUNT[5]~2\,
	combout => \INSTLIGHTS|clk_proc:COUNT[6]~1_combout\,
	cout => \INSTLIGHTS|clk_proc:COUNT[6]~2\);

\INSTLIGHTS|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[6]~q\);

\INSTLIGHTS|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[7]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[7]~q\ & (\INSTLIGHTS|clk_proc:COUNT[6]~2\ $ (GND))) # (!\INSTLIGHTS|clk_proc:COUNT[7]~q\ & (!\INSTLIGHTS|clk_proc:COUNT[6]~2\ & VCC))
-- \INSTLIGHTS|clk_proc:COUNT[7]~2\ = CARRY((\INSTLIGHTS|clk_proc:COUNT[7]~q\ & !\INSTLIGHTS|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \INSTLIGHTS|clk_proc:COUNT[6]~2\,
	combout => \INSTLIGHTS|clk_proc:COUNT[7]~1_combout\,
	cout => \INSTLIGHTS|clk_proc:COUNT[7]~2\);

\INSTLIGHTS|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[7]~q\);

\INSTLIGHTS|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[8]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[8]~q\ & (!\INSTLIGHTS|clk_proc:COUNT[7]~2\)) # (!\INSTLIGHTS|clk_proc:COUNT[8]~q\ & ((\INSTLIGHTS|clk_proc:COUNT[7]~2\) # (GND)))
-- \INSTLIGHTS|clk_proc:COUNT[8]~2\ = CARRY((!\INSTLIGHTS|clk_proc:COUNT[7]~2\) # (!\INSTLIGHTS|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \INSTLIGHTS|clk_proc:COUNT[7]~2\,
	combout => \INSTLIGHTS|clk_proc:COUNT[8]~1_combout\,
	cout => \INSTLIGHTS|clk_proc:COUNT[8]~2\);

\INSTLIGHTS|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[8]~q\);

\INSTLIGHTS|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[9]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[9]~q\ & (\INSTLIGHTS|clk_proc:COUNT[8]~2\ $ (GND))) # (!\INSTLIGHTS|clk_proc:COUNT[9]~q\ & (!\INSTLIGHTS|clk_proc:COUNT[8]~2\ & VCC))
-- \INSTLIGHTS|clk_proc:COUNT[9]~2\ = CARRY((\INSTLIGHTS|clk_proc:COUNT[9]~q\ & !\INSTLIGHTS|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \INSTLIGHTS|clk_proc:COUNT[8]~2\,
	combout => \INSTLIGHTS|clk_proc:COUNT[9]~1_combout\,
	cout => \INSTLIGHTS|clk_proc:COUNT[9]~2\);

\INSTLIGHTS|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[9]~q\);

\INSTLIGHTS|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|clk_proc:COUNT[10]~1_combout\ = \INSTLIGHTS|clk_proc:COUNT[10]~q\ $ (\INSTLIGHTS|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INSTLIGHTS|clk_proc:COUNT[10]~q\,
	cin => \INSTLIGHTS|clk_proc:COUNT[9]~2\,
	combout => \INSTLIGHTS|clk_proc:COUNT[10]~1_combout\);

\INSTLIGHTS|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INSTLIGHTS|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTLIGHTS|clk_proc:COUNT[10]~q\);

\INSTSTATEMACHINE|ns_amber~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|ns_amber~0_combout\ = (!\INSTSTATEMACHINE|current_state.S6~q\ & !\INSTSTATEMACHINE|current_state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTSTATEMACHINE|current_state.S6~q\,
	datad => \INSTSTATEMACHINE|current_state.S7~q\,
	combout => \INSTSTATEMACHINE|ns_amber~0_combout\);

\INSTLIGHTS|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|DOUT_TEMP[6]~0_combout\ = (\INSTLIGHTS|clk_proc:COUNT[10]~q\ & (((!\INSTSTATEMACHINE|ns_amber~0_combout\)))) # (!\INSTLIGHTS|clk_proc:COUNT[10]~q\ & ((\INSTSTATEMACHINE|current_state.S14~q\) # ((\INSTSTATEMACHINE|current_state.S15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S14~q\,
	datab => \INSTSTATEMACHINE|current_state.S15~q\,
	datac => \INSTLIGHTS|clk_proc:COUNT[10]~q\,
	datad => \INSTSTATEMACHINE|ns_amber~0_combout\,
	combout => \INSTLIGHTS|DOUT_TEMP[6]~0_combout\);

\INSTSTATEMACHINE|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr2~0_combout\ = (!\INSTSTATEMACHINE|current_state.S3~q\ & (!\INSTSTATEMACHINE|current_state.S2~q\ & (!\INSTSTATEMACHINE|current_state.S4~q\ & !\INSTSTATEMACHINE|current_state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S3~q\,
	datab => \INSTSTATEMACHINE|current_state.S2~q\,
	datac => \INSTSTATEMACHINE|current_state.S4~q\,
	datad => \INSTSTATEMACHINE|current_state.S5~q\,
	combout => \INSTSTATEMACHINE|WideOr2~0_combout\);

\INSTSTATEMACHINE|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr6~0_combout\ = (\INSTSTATEMACHINE|current_state.S11~q\) # ((\INSTSTATEMACHINE|current_state.S10~q\) # ((\INSTSTATEMACHINE|current_state.S12~q\) # (\INSTSTATEMACHINE|current_state.S13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S11~q\,
	datab => \INSTSTATEMACHINE|current_state.S10~q\,
	datac => \INSTSTATEMACHINE|current_state.S12~q\,
	datad => \INSTSTATEMACHINE|current_state.S13~q\,
	combout => \INSTSTATEMACHINE|WideOr6~0_combout\);

\INSTSTATEMACHINE|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr9~0_combout\ = (\INSTSTATEMACHINE|current_state.S2~q\) # ((\INSTSTATEMACHINE|current_state.S10~q\) # ((\INSTSTATEMACHINE|current_state.S6~q\) # (\INSTSTATEMACHINE|current_state.S14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S2~q\,
	datab => \INSTSTATEMACHINE|current_state.S10~q\,
	datac => \INSTSTATEMACHINE|current_state.S6~q\,
	datad => \INSTSTATEMACHINE|current_state.S14~q\,
	combout => \INSTSTATEMACHINE|WideOr9~0_combout\);

\INSTSTATEMACHINE|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr8~0_combout\ = (\INSTSTATEMACHINE|current_state.S0~q\ & (!\INSTSTATEMACHINE|current_state.S4~q\ & (!\INSTSTATEMACHINE|current_state.S12~q\ & !\INSTSTATEMACHINE|current_state.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S0~q\,
	datab => \INSTSTATEMACHINE|current_state.S4~q\,
	datac => \INSTSTATEMACHINE|current_state.S12~q\,
	datad => \INSTSTATEMACHINE|current_state.S8~q\,
	combout => \INSTSTATEMACHINE|WideOr8~0_combout\);

\INSTSTATEMACHINE|WideOr9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr9~combout\ = (\INSTSTATEMACHINE|WideOr9~0_combout\) # (!\INSTSTATEMACHINE|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|WideOr9~0_combout\,
	datad => \INSTSTATEMACHINE|WideOr8~0_combout\,
	combout => \INSTSTATEMACHINE|WideOr9~combout\);

\INSTSTATEMACHINE|WideOr8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr8~1_combout\ = (\INSTSTATEMACHINE|current_state.S5~q\) # ((\INSTSTATEMACHINE|current_state.S13~q\) # ((\INSTSTATEMACHINE|current_state.S1~q\) # (\INSTSTATEMACHINE|current_state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S5~q\,
	datab => \INSTSTATEMACHINE|current_state.S13~q\,
	datac => \INSTSTATEMACHINE|current_state.S1~q\,
	datad => \INSTSTATEMACHINE|current_state.S9~q\,
	combout => \INSTSTATEMACHINE|WideOr8~1_combout\);

\INSTSTATEMACHINE|WideOr8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr8~combout\ = (\INSTSTATEMACHINE|WideOr8~1_combout\) # (!\INSTSTATEMACHINE|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|WideOr8~1_combout\,
	datad => \INSTSTATEMACHINE|WideOr8~0_combout\,
	combout => \INSTSTATEMACHINE|WideOr8~combout\);

\INSTSTATEMACHINE|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr7~0_combout\ = (\INSTSTATEMACHINE|current_state.S11~q\) # ((\INSTSTATEMACHINE|current_state.S10~q\) # ((\INSTSTATEMACHINE|current_state.S1~q\) # (!\INSTSTATEMACHINE|current_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S11~q\,
	datab => \INSTSTATEMACHINE|current_state.S10~q\,
	datac => \INSTSTATEMACHINE|current_state.S1~q\,
	datad => \INSTSTATEMACHINE|current_state.S0~q\,
	combout => \INSTSTATEMACHINE|WideOr7~0_combout\);

\INSTSTATEMACHINE|WideOr7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr7~combout\ = (\INSTSTATEMACHINE|current_state.S3~q\) # ((\INSTSTATEMACHINE|current_state.S2~q\) # ((\INSTSTATEMACHINE|WideOr7~0_combout\) # (!\INSTSTATEMACHINE|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S3~q\,
	datab => \INSTSTATEMACHINE|current_state.S2~q\,
	datac => \INSTSTATEMACHINE|WideOr7~0_combout\,
	datad => \INSTSTATEMACHINE|WideOr7~1_combout\,
	combout => \INSTSTATEMACHINE|WideOr7~combout\);

\INSTSTATEMACHINE|WideOr4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|WideOr4~combout\ = (\INSTSTATEMACHINE|current_state.S6~q\) # ((\INSTSTATEMACHINE|current_state.S7~q\) # ((!\INSTSTATEMACHINE|WideOr4~0_combout\) # (!\INSTSTATEMACHINE|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S6~q\,
	datab => \INSTSTATEMACHINE|current_state.S7~q\,
	datac => \INSTSTATEMACHINE|WideOr2~0_combout\,
	datad => \INSTSTATEMACHINE|WideOr4~0_combout\,
	combout => \INSTSTATEMACHINE|WideOr4~combout\);

\INSTLIGHTS|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|DOUT[0]~0_combout\ = \INSTLIGHTS|clk_proc:COUNT[10]~q\ $ ((((!\INSTSTATEMACHINE|ns_amber~0_combout\) # (!\INSTSTATEMACHINE|WideOr4~0_combout\)) # (!\INSTSTATEMACHINE|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|WideOr2~0_combout\,
	datab => \INSTSTATEMACHINE|WideOr4~0_combout\,
	datac => \INSTSTATEMACHINE|ns_amber~0_combout\,
	datad => \INSTLIGHTS|clk_proc:COUNT[10]~q\,
	combout => \INSTLIGHTS|DOUT[0]~0_combout\);

\INST3|blink_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|blink_sig~0_combout\ = (\INST3|clk_divider:counter[2]~q\ & !\INSTMID|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[2]~q\,
	datad => \INSTMID|sreg\(1),
	combout => \INST3|blink_sig~0_combout\);

\INST3|blink_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|blink_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|blink_sig~q\);

\INSTSTATEMACHINE|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|Selector2~2_combout\ = ((\INST3|blink_sig~q\ & ((\INSTSTATEMACHINE|current_state.S1~q\) # (!\INSTSTATEMACHINE|current_state.S0~q\)))) # (!\INSTSTATEMACHINE|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S0~q\,
	datab => \INSTSTATEMACHINE|current_state.S1~q\,
	datac => \INST3|blink_sig~q\,
	datad => \INSTSTATEMACHINE|WideOr2~0_combout\,
	combout => \INSTSTATEMACHINE|Selector2~2_combout\);

\INSTSTATEMACHINE|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|Selector3~2_combout\ = (\INSTSTATEMACHINE|WideOr6~0_combout\) # ((\INST3|blink_sig~q\ & ((\INSTSTATEMACHINE|current_state.S8~q\) # (\INSTSTATEMACHINE|current_state.S9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S8~q\,
	datab => \INSTSTATEMACHINE|current_state.S9~q\,
	datac => \INSTSTATEMACHINE|WideOr6~0_combout\,
	datad => \INST3|blink_sig~q\,
	combout => \INSTSTATEMACHINE|Selector3~2_combout\);

\INSTLIGHTS|DOUT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTLIGHTS|DOUT[3]~1_combout\ = (\INSTLIGHTS|clk_proc:COUNT[10]~q\ & (\INSTSTATEMACHINE|Selector2~2_combout\)) # (!\INSTLIGHTS|clk_proc:COUNT[10]~q\ & ((\INSTSTATEMACHINE|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|Selector2~2_combout\,
	datab => \INSTSTATEMACHINE|Selector3~2_combout\,
	datad => \INSTLIGHTS|clk_proc:COUNT[10]~q\,
	combout => \INSTLIGHTS|DOUT[3]~1_combout\);

\INSTSTATEMACHINE|ew_amber\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTSTATEMACHINE|ew_amber~combout\ = (\INSTSTATEMACHINE|current_state.S14~q\) # (\INSTSTATEMACHINE|current_state.S15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTSTATEMACHINE|current_state.S14~q\,
	datab => \INSTSTATEMACHINE|current_state.S15~q\,
	combout => \INSTSTATEMACHINE|ew_amber~combout\);

\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;

ww_sim_sm_clken <= \sim_sm_clken~output_o\;

ww_sim_blink_sig <= \sim_blink_sig~output_o\;

ww_sim_ns_green <= \sim_ns_green~output_o\;

ww_sim_ns_amber <= \sim_ns_amber~output_o\;

ww_sim_ns_red <= \sim_ns_red~output_o\;

ww_sim_ew_green <= \sim_ew_green~output_o\;

ww_sim_ew_amber <= \sim_ew_amber~output_o\;

ww_sim_ew_red <= \sim_ew_red~output_o\;
END structure;


