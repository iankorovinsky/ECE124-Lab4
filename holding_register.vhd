library ieee;
use ieee.std_logic_1164.all;


entity holding_register is port (

			clk					: in std_logic;
			reset				: in std_logic;
			register_clr		: in std_logic;
			din					: in std_logic;
			dout				: out std_logic
  );
 end holding_register;
 
 architecture circuit of holding_register is

	Signal sreg				: std_logic;
	signal d	: std_logic;

BEGIN

d <= (sreg OR din) AND (NOT(reset OR register_clr));

synced_system : process(clk)
	BEGIN
		if (rising_edge(clk)) then
			sreg <= d;
			dout <= d;
		end if;
	end process;
end;