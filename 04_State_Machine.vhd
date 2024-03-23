-- Members: Ian Korovinsky and Steven Yang | Lab4_REPORT | LS206 | Group 17

-- Import packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Defines the State_Machine entity, which represents a traffic light through a Moore state machine
Entity State_Machine IS Port
(
 clk_input, reset, sm_clken, blink_sig, ns_request, ew_request			: IN std_logic; -- Input bits for clock, reset, enable, blink signal, and pedestrian requests
 ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red						: OUT std_logic; -- Output bits for the red, amber and green traffic lights (0 when not-active, 1 when light is active), for both NS and EW directions
 ns_crossing, ew_crossing	: OUT std_logic; -- Output bits to symbolize crossing periods
 fourbit_state_number : OUT std_logic_vector(3 downto 0); -- Output logic vector to represent state (unsigned decimal) as a binary number
 ns_clear, ew_clear : OUT std_logic -- Output bits to clear pedestrian requests
 );
END ENTITY;
 
-- Define the logic of the traffic light Moore State Machine
Architecture SM of State_Machine is
 
 
TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15);   -- list all the 16 STATE_NAMES values

 
SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


BEGIN

-- Register process updates with respect to changes in the clock
Register_Section: PROCESS (clk_input)  
BEGIN
	-- Reacts on the rising edge of the clock
	IF(rising_edge(clk_input)) THEN
		-- If reset is active, reset state back to first state
		IF (reset = '1') THEN
			current_state <= S0;
		-- If reset is not active and state machine is enable, current state transitions to next state
		ELSIF (reset = '0' and sm_clken = '1') THEN
			current_state <= next_State;
		END IF;
	END IF;
END PROCESS;	



-- Transition process updates with respect to the changes in current_state
Transition_Section: PROCESS (current_state) 

BEGIN
  -- Case blocks to define the transition between states depending on order and variable values
  CASE current_state IS
        -- Either advances chronologically or skips to S6 (EW amber state) if EW request is activated by pedestrian and NS request is not active
  		WHEN S0 =>
			if (ew_request = '1' AND ns_request = '0') then
				next_state <= S6;
			else
				next_state <= S1;
			end if;
        -- Either advances chronologically or skips to S6 (EW amber state) if EW request is activated by pedestrian and NS request is not active
		WHEN S1 =>		
			if (ew_request = '1' AND ns_request = '0') then
				next_state <= S6;
			else
				next_state <= S2;
			end if;
        -- Assigns the next states chronologically
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
		-- Either advances chronologically or skips to S14 (NS amber state) if NS request is activated by pedestrian and EW request is not active
		WHEN S8 =>		
			if (ew_request = '0' AND ns_request = '1') then
				next_state <= S14;
			else
				next_state <= S9;
			end if;
		-- Either advances chronologically or skips to S14 (NS amber state) if NS request is activated by pedestrian and EW request is not active
		WHEN S9 =>		
			if (ew_request = '0' AND ns_request = '1') then
				next_state <= S14;
			else
				next_state <= S10;
			end if;
		-- Assigns the next states chronologically
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
		-- When reaches S15, next state is defined back to the start (S0)
		WHEN S15 =>		
			next_state <= S0;
	  END CASE;
 END PROCESS;
 

-- Decoder process updates with respect to the changes in current_state
Decoder_Section: PROCESS (current_state) 

BEGIN
	-- Case block to assign outputs based on the state
     CASE current_state IS
		-- Assigns blinking green signal for NS and red signal for EW
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
		-- Assigns solid green signal for NS with activated crossing signal and red signal for EW
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
		-- Assigns amber signal for NS and red signal for EW and activates NS request clear
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
		-- Assigns amber signal for NS and red signal for EW
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
			
		-- Assigns red signal for NS and blinking green signal for EW
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
		
		-- Assigns red signal for NS and green signal for EW with crossing signal activated
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
		-- Assigns red signal for NS and amber signal for EW and activates EW request clear
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
		-- Assigns red signal for NS and amber signal for EW
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
	  
	  -- Case block which assigns a state's respective binary value to the fourbit_state_number output
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
