--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:06:34 04/10/2017
-- Design Name:   
-- Module Name:   E:/Usuario/Documentos/Xilinx/Procesador1.1/p_sumador.vhd
-- Project Name:  Procesador1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SUMADOR
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
 
ENTITY p_sumador IS
END p_sumador;
 
ARCHITECTURE behavior OF p_sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SUMADOR
    PORT(
         entrada1 : IN  std_logic_vector(31 downto 0);
         entrada2 : IN  std_logic_vector(31 downto 0);
         salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada1 : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SUMADOR PORT MAP (
          entrada1 => entrada1,
          entrada2 => entrada2,
          salida => salida
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      entrada1<=x"00000001";
		entrada2<=x"00000001";
      --wait for 100 ns;	
		

      -- insert stimulus here 

      wait;
   end process;

END;
