----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:29:19 04/16/2017 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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

entity MUX is
    Port ( e1_mux : in  STD_LOGIC_VECTOR (31 downto 0);
           e2_mux : in  STD_LOGIC_VECTOR (31 downto 0);
           señal_mux : in  STD_LOGIC;
           salida_mux : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX;

architecture Behavioral of MUX is

begin
	
	process(e1_mux,e2_mux,señal_mux)
		begin
					if señal_mux = '0' then
						salida_mux <= e1_mux;--si el inmediato es cero retorna la entrada 1 que es el valor del register file
					else
						salida_mux <= e2_mux;--si el valor es uno retorna la entrada 2 que es el valor del SEU
					end if;
	end process;

end Behavioral;

