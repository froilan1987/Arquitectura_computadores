--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:51:04 04/18/2017
-- Design Name:   
-- Module Name:   E:/utp/Arquitectura_computadores/procesadores/Procesador2/P_PROCESADOR_2.vhd
-- Project Name:  Procesador2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: procesador_2
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
 
ENTITY P_PROCESADOR_2 IS
END P_PROCESADOR_2;
 
ARCHITECTURE behavior OF P_PROCESADOR_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesador_2
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         s_procesador_2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal s_procesador_2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesador_2 PORT MAP (
          rst => rst,
          clk => clk,
          s_procesador_2 => s_procesador_2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		rst<= '1';
      -- hold reset state for 100 ns.
      wait for 20 ns;	
		rst<= '0';
     

      wait;
   end process;

END;
