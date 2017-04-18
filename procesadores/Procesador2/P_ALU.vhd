--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:44:55 04/15/2017
-- Design Name:   
-- Module Name:   E:/Usuario/Documentos/Xilinx/Procesador1.1/P_ALU.vhd
-- Project Name:  Procesador1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY P_ALU IS
END P_ALU;
 
ARCHITECTURE behavior OF P_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         rs1 : IN  std_logic_vector(31 downto 0);
         rs2 : IN  std_logic_vector(31 downto 0);
         entrada : IN  std_logic_vector(5 downto 0);
         salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal rs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          rs1 => rs1,
          rs2 => rs2,
          entrada => entrada,
          salida => salida
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		rs1 <= "00000000000000000000000000000000";
		rs2 <= "11111111111111111111111111111111";
		entrada <= "000010"; --or
		
		wait for 100 ns;
		rs1 <= "00000000000000000000000000000000";
		rs2 <= "11111111111111111111111111111111";
		entrada <= "000100"; --resta
		
		wait for 100 ns;
		rs1 <= "00000000000000000000000000000000";
		rs2 <= "11111111111111111111111111111111";
		entrada <= "000000"; --suma
		
		wait for 100 ns;
		rs1 <= "00000000000000000000000000000000";
		rs2 <= "11111111111111111111111111111111";
		entrada <= "011100";

      -- insert stimulus here 

      wait;
   end process;

END;
