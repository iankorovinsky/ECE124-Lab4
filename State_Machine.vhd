library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity State_Machine IS Port
(
 clk_input, reset, sm_clken, blink_sig, ns_request, ew_request			: IN std_logic;
 ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red						: OUT std_logic;
 ns_crossing, ew_crossing	: OUT std_logic;
 fourbit_state_number : OUT std_logic_vector(3 downto 0);
 ns_clear, ew_clear : OUT std_logic
 );
END ENTITY;
 

Architecture SM of State_Machine is
 
 
TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15);   -- list all the STATE_NAMES values

 
SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


BEGIN
 

 -------------------------------------------------------------------------------
 --State Machine:
 -------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS EXAMPLE
 
Register_Section: PROCESS (clk_input)  -- this process updates with a clock
BEGIN
	IF(rising_edge(clk_input)) THEN
		IF (reset = '1') THEN
			current_state <= S0;
		ELSIF (reset = '0' and sm_clken = '1') THEN
			current_state <= next_State;
		END IF;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS EXAMPLE

Transition_Section: PROCESS (current_state) 

BEGIN
  CASE current_state IS
        WHEN S0 =>
			if (ew_request = '1' AND ns_request = '0') then
				next_state <= S6;
			else
				next_state <= S1;
			end if;
        WHEN S1 =>		
			if (ew_request = '1' AND ns_request = '0') then
				next_state <= S6;
			else
				next_state <= S2;
			end if;
        WHEN S2 =>		
				next_state <= S3;
		  WHEN S3 =>		
				next_state <= S4;
		  WHEN S4 =>		
				next_state <= S5;
		  WHEN S5 =>		
				next_state <= S6;
		  WHEN S6 =>		
				next_state <= S7;
		  WHEN S7 =>		
				next_state <= S8;
		  WHEN S8 =>		
			if (ew_request = '0' AND ns_request = '1') then
				next_state <= S14;
			else
				next_state <= S9;
			end if;
		  WHEN S9 =>		
			if (ew_request = '0' AND ns_request = '1') then
				next_state <= S14;
			else
				next_state <= S10;
			end if;
		  WHEN S10 =>		
				next_state <= S11;
		  WHEN S11 =>		
				next_state <= S12;
		  WHEN S12 =>		
				next_state <= S13;
		  WHEN S13 =>		
				next_state <= S14;
		  WHEN S14 =>		
				next_state <= S15;
		  WHEN S15 =>		
				next_state <= S0;
	  END CASE;
 END PROCESS;
 

-- DECODER SECTION PROCESS EXAMPLE (MOORE FORM SHOWN)

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
	  
         WHEN S0 | S1 =>
			ns_clear <= '0';		
			ns_green <= blink_sig;
			ns_amber <= '0';
			ns_red <= '0';
			ns_crossing <= '0';
			
			ew_clear <= '0';
			ew_green <= '0';
			ew_amber <= '0';
			ew_red <= '1';
			ew_crossing <= '0';
			
         WHEN S2 | S3 | S4 | S5 =>		
			ns_clear <= '0';
			ns_green <= '1';
			ns_amber <= '0';
			ns_red <= '0';
			ns_crossing <= '1';
			
			ew_clear <= '0';
			ew_green <= '0';
			ew_amber <= '0';
			ew_red <= '1';
			ew_crossing <= '0';
			
         WHEN S6 =>		
			ns_clear <= '1';
			ns_green <= '0';
			ns_amber <= '1';
			ns_red <= '0';
			ns_crossing <= '0';
			
			ew_clear <= '0';
			ew_green <= '0';
			ew_amber <= '0';
			ew_red <= '1';
			ew_crossing <= '0';
			
			WHEN S7 =>		
			ns_clear <= '0';
			ns_green <= '0';
			ns_amber <= '1';
			ns_red <= '0';
			ns_crossing <= '0';
			
			ew_clear <= '0';
			ew_green <= '0';
			ew_amber <= '0';
			ew_red <= '1';
			ew_crossing <= '0';
			
			
         WHEN S8 | S9 =>
			ns_clear <= '0';
 			ns_green <= '0';
			ns_amber <= '0';
			ns_red <= '1';
			ns_crossing <= '0';
			
			ew_clear <= '0';
 			ew_green <= blink_sig;
			ew_amber <= '0';
			ew_red <= '0';
			ew_crossing <= '0';
			
			WHEN S10 | S11 | S12 | S13 =>		
 			ns_clear <= '0';
			ns_green <= '0';
			ns_amber <= '0';
			ns_red <= '1';
			ns_crossing <= '0';
			
			ew_clear <= '0';
 			ew_green <= '1';
			ew_amber <= '0';
			ew_red <= '0';
			ew_crossing <= '1';
			
			WHEN S14 =>		
 			ns_clear <= '0';
			ns_green <= '0';
			ns_amber <= '0';
			ns_red <= '1';
			ns_crossing <= '0';
			
			ew_clear <= '1';
 			ew_green <= '0';
			ew_amber <= '1';
			ew_red <= '0';
			ew_crossing <= '0';
			
			WHEN S15 =>		
 			ns_clear <= '0';
			ns_green <= '0';
			ns_amber <= '0';
			ns_red <= '1';
			ns_crossing <= '0';
			
			ew_clear <= '0';
 			ew_green <= '0';
			ew_amber <= '1';
			ew_red <= '0';
			ew_crossing <= '0';
			
	  END CASE;
	  
	  CASE current_state IS
		WHEN S0 =>
			fourbit_state_number <= "0000";
		WHEN S1 =>
			fourbit_state_number <= "0001";
		WHEN S2 =>
			fourbit_state_number <= "0010";
		WHEN S3 =>
			fourbit_state_number <= "0011";
		WHEN S4 =>
			fourbit_state_number <= "0100";
		WHEN S5 =>
			fourbit_state_number <= "0101";
		WHEN S6 =>
			fourbit_state_number <= "0110";
		WHEN S7 =>
			fourbit_state_number <= "0111";
		WHEN S8 =>
			fourbit_state_number <= "1000";
		WHEN S9 =>
			fourbit_state_number <= "1001";
		WHEN S10 =>
			fourbit_state_number <= "1010";
		WHEN S11 =>
			fourbit_state_number <= "1011";
		WHEN S12 =>
			fourbit_state_number <= "1100";
		WHEN S13 =>
			fourbit_state_number <= "1101";
		WHEN S14 =>
			fourbit_state_number <= "1110";
		WHEN S15 =>
			fourbit_state_number <= "1111";
		END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
