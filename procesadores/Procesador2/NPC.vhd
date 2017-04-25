----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:39 04/03/2017 
-- Design Name: 
-- Module Name:    NPC - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NPC is
    Port ( ENTRADA : in  STD_LOGIC_VECTOR (31 downto 0);
           SALIDA : out  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end NPC;

architecture Behavioral of NPC is

	begin
		process(clk, ENTRADA, rst) -- se activa
			begin
				if(rst = '1')then
					SALIDA <= x"00000000";
				else
					if(rising_edge(clk))then
						SALIDA <= ENTRADA;
					end if;
				end if;
		end process;

end Behavioral;

