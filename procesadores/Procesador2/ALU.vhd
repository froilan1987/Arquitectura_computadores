----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:33:56 04/15/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( rs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada : in  STD_LOGIC_VECTOR (5 downto 0);
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is
begin
process(rs1,rs2,entrada)

begin
	case (entrada) is 
		   when "000000" => -- ADD
				salida <= rs1 + rs2;
			when "000001" => -- AND
				salida <= rs1 and rs2;
			when "000010" => -- OR
				salida <= rs1 or rs2;
			when "000011" => -- XOR
				salida <= rs1 xor rs2;
			when "000100" => -- SUB
				salida <= rs1 - rs2;
			when "000101" => -- ANDN
				salida <= rs1 nand rs2;
			when "000110" => -- ORN
				salida <= rs1 nor rs2;
			when "000111" => -- XORN
				salida <= rs1 xnor rs2;
			when others => 
				salida <= (others=>'0');
		end case;
	
	end process;



end Behavioral;

