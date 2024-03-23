-- Members: Ian Korovinsky and Steven Yang | Lab4_REPORT | LS206 | Group 17
-- Import packages
library ieee;
use ieee.std_logic_1164.all;

-- Declare holding register entity, which holds button input values until logic gate conditions are met
entity holding_register is port (

			clk					: in std_logic; -- Input bit for clock
			reset				: in std_logic; -- Input bit for reset
			register_clr		: in std_logic; -- Input bit for register clear
			din					: in std_logic; -- Input bit for data input
			dout				: out std_logic -- Output bit for data output
  );
 end holding_register;
 
 -- Defines the logic of the circuit
 architecture circuit of holding_register is
	-- Signal to hold register values
	Signal sreg				: std_logic;
	-- Signal to evaluate input logic
	signal d	: std_logic;

BEGIN
-- Evaluates input logic and assigns it to the d signal
d <= (sreg OR din) AND (NOT(reset OR register_clr));

-- Process which activates based on changes in clock, responsible for the syncing on the holding register
synced_system : process(clk)
	BEGIN
		-- If the clock is on the rising edge, then proceed
		if (rising_edge(clk)) then
			-- Assigns d to register and data output
			sreg <= d;
			dout <= d;
		end if;
	end process;
end;