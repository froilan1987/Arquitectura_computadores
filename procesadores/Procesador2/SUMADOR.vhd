----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:41:37 04/06/2017 
-- Design Name: 
-- Module Name:    SUMADOR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SUMADOR is
    Port ( entrada1 : in  STD_LOGIC_VECTOR (31 downto 0); -- incremento
           entrada2 : in  STD_LOGIC_VECTOR (31 downto 0); -- direccion
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end SUMADOR;

architecture Behavioral of SUMADOR is

begin
	process(entrada1, entrada2)
		begin
			salida <= entrada1 + entrada2;
	end process;

end Behavioral;

