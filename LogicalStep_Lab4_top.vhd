
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
    clkin_50	    : in	std_logic;							-- The 50 MHz FPGA Clockinput
	rst_n			: in	std_logic;							-- The RESET input (ACTIVE LOW)
	pb_n			: in	std_logic_vector(3 downto 0); -- The push-button inputs (ACTIVE LOW)
 	sw   			: in  	std_logic_vector(7 downto 0); -- The switch inputs
    leds			: out 	std_logic_vector(7 downto 0);	-- for displaying the the lab4 project details
	-------------------------------------------------------------
	-- you can add temporary output ports here if you need to debug your design 
	-- or to add internal signals for your simulations
	-------------------------------------------------------------
	
   seg7_data 	: out 	std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic;							-- seg7 digi selectors
	
	-- Outputs for simulation
	--sim_sm_clken, sim_blink_sig, sim_ns_green, sim_ns_amber, sim_ns_red, sim_ew_green, sim_ew_amber, sim_ew_red	:	out std_logic
	);
END LogicalStep_Lab4_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS
   component segment7_mux port (
             clk        	: in  	std_logic := '0';
			 DIN2 			: in  	std_logic_vector(6 downto 0);	--bits 6 to 0 represent segments G,F,E,D,C,B,A
			 DIN1 			: in  	std_logic_vector(6 downto 0); --bits 6 to 0 represent segments G,F,E,D,C,B,A
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
   );
   end component;

   component clock_generator port (
			sim_mode			: in boolean;
			reset				: in std_logic;
            clkin      		    : in  std_logic;
			sm_clken			: out	std_logic;
			blink		  		: out std_logic
  );
   end component;

    component pb_filters port (
			clkin				: in std_logic;
			rst_n				: in std_logic;
			rst_n_filtered	    : out std_logic;
			pb_n				: in  std_logic_vector (3 downto 0);
			pb_n_filtered	    : out	std_logic_vector(3 downto 0)							 
 );
   end component;

	component pb_inverters port (
			rst_n				: in  std_logic;
			rst				    : out	std_logic;							 
			pb_n_filtered	    : in  std_logic_vector (3 downto 0);
			pb					: out	std_logic_vector(3 downto 0)							 
  );
   end component;
	
	component synchronizer port(
			clk					: in std_logic;
			reset					: in std_logic;
			din					: in std_logic;
			dout					: out std_logic
  );
   end component; 
  component holding_register port (
			clk					: in std_logic;
			reset					: in std_logic;
			register_clr		: in std_logic;
			din					: in std_logic;
			dout					: out std_logic
  );
  end component;

	component State_Machine port (
		clk_input, reset, sm_clken, blink_sig, ns_request, ew_request			: IN std_logic;
		ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red						: OUT std_logic;
		ns_crossing, ew_crossing	: OUT std_logic;
		fourbit_state_number : OUT std_logic_vector(3 downto 0);
		ns_clear, ew_clear : OUT std_logic

	);
	end component;
----------------------------------------------------------------------------------------------------
	CONSTANT	sim_mode								: boolean := TRUE;  -- set to FALSE for LogicalStep board downloads																						-- set to TRUE for SIMULATIONS
	SIGNAL rst, rst_n_filtered, synch_rst			    : std_logic;
	SIGNAL sm_clken, blink_sig							: std_logic; 
	SIGNAL pb_n_filtered, pb							: std_logic_vector(3 downto 0); 
	SIGNAL ew_req, ns_req					: std_logic;
	SIGNAL ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red : std_logic;
	SIGNAL ns_crossing, ew_crossing : std_logic;
	SIGNAL NSLIGHTS, EWLIGHTS	: std_logic_vector(6 downto 0);
	SIGNAL ns_clear, ew_clear : std_logic;
	SIGNAL ew_out, ns_out : std_logic;
	
BEGIN
----------------------------------------------------------------------------------------------------
INST0: pb_filters		port map (clkin_50, rst_n, rst_n_filtered, pb_n, pb_n_filtered);
INST1: pb_inverters		port map (rst_n_filtered, rst, pb_n_filtered, pb);
--INST2: synchronizer     port map (clkin_50,synch_rst, rst, synch_rst);	-- the synchronizer is also reset by synch_rst.
INST3: clock_generator 	port map (sim_mode, synch_rst, clkin_50, sm_clken, blink_sig);
--leds(0) <= blink_sig;
--leds(2) <= sm_clken;

INSTMID: synchronizer port map (clkin_50, synch_rst, rst, synch_rst);

INSTEW: synchronizer port map (clkin_50, synch_rst, pb(1), ew_req);
INSTEWHOLDREG: holding_register port map (clkin_50, synch_rst, ew_clear, ew_req, ew_out);
leds(3) <= ew_out;

INSTNS: synchronizer port map (clkin_50, synch_rst, pb(0), ns_req);
INSTNSHOLDREG : holding_register port map (clkin_50, synch_rst, ns_clear, ns_req, ns_out);
leds(1) <= ns_out;

INSTSTATEMACHINE : State_Machine port map (clkin_50, synch_rst, sm_clken, blink_sig, ns_out, ew_out, ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red, ns_crossing, ew_crossing, leds(7 downto 4), ns_clear, ew_clear);

leds(0) <= ns_crossing;
leds(2) <= ew_crossing;

NSLIGHTS(6 downto 0) <= ns_amber & "00" & ns_green & "00" & ns_red;
EWLIGHTS(6 downto 0) <= ew_amber & "00" & ew_green & "00" & ew_red; 

INSTLIGHTS : segment7_mux port map (clkin_50, NSLIGHTS, EWLIGHTS, seg7_data, seg7_char2, seg7_char1);

--sim_sm_clken <= sm_clken;
--sim_blink_sig <= blink_sig;
--sim_ns_green <= ns_green;
--sim_ns_amber <= ns_amber;
--sim_ns_red <= ns_red;
--sim_ew_green <= ew_green;
--sim_ew_amber <= ew_amber;
--sim_ew_red <= ew_red;


END SimpleCircuit;
