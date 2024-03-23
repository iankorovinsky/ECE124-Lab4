-- Members: Ian Korovinsky and Steven Yang | Lab4_REPORT | LS206 | Group 17
-- Import packages
library ieee;
use ieee.std_logic_1164.all;

-- Define PB Inverters entity, which inverts the button inputs
entity PB_inverters is port (
	rst_n				: in	std_logic; -- Input reset bit
	rst				: out std_logic; -- Output reset bit (inverted)
 	pb_n_filtered	: in  std_logic_vector (3 downto 0); -- Input 4 bit button vector
	pb					: out	std_logic_vector(3 downto 0) -- Output 4 bit vector corresponding to inverted buttons							 
	); 
end PB_inverters;

-- Defines the logic for the PB inverter circuit
architecture ckt of PB_inverters is

begin
-- Inverts the reset
rst <= NOT(rst_n);
-- Inverts the filtered buttons
pb <= NOT(pb_n_filtered);

end ckt;