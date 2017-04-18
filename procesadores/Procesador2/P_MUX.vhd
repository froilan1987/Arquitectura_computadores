--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:38:43 04/16/2017
-- Design Name:   
-- Module Name:   E:/Usuario/Documentos/Xilinx/Procesador2/P_MUX.vhd
-- Project Name:  Procesador2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY P_MUX IS
END P_MUX;
 
ARCHITECTURE behavior OF P_MUX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         e1_mux : IN  std_logic_vector(31 downto 0);
         e2_mux : IN  std_logic_vector(31 downto 0);
         señal_mux : IN  std_logic;
         salida_mux : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal e1_mux : std_logic_vector(31 downto 0) := (others => '0');
   signal e2_mux : std_logic_vector(31 downto 0) := (others => '0');
   signal señal_mux : std_logic := '0';

 	--Outputs
   signal salida_mux : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          e1_mux => e1_mux,
          e2_mux => e2_mux,
          señal_mux => señal_mux,
          salida_mux => salida_mux
        );

   -- Clock process definitions
  -- <clock>_process :process
   --begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
			señal_mux <='0';
			e2_mux <= x"00000011"; -- 3
			e1_mux <= x"00000101";  --5
			
			wait for 100 ns;
			señal_mux <='1';
			e2_mux <= x"00000011"; -- 3
			e1_mux <= x"00000101";
		
      wait;
   end process;

END;
