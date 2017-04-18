----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:22:11 04/18/2017 
-- Design Name: 
-- Module Name:    procesador_2 - arquitectura_procesador_2 
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

entity procesador_2 is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           s_procesador_2 : out  STD_LOGIC_VECTOR (31 downto 0));
end procesador_2;

architecture arquitectura_procesador_2 of procesador_2 is

-- pc
	COMPONENT PC
	PORT(
		entrada : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;
		clk : IN std_logic;          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	

-- NPC
COMPONENT NPC
	PORT(
		ENTRADA : IN std_logic_vector(31 downto 0);
		RST : IN std_logic;
		CLK : IN std_logic;          
		SALIDA : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	
-- sumador
COMPONENT SUMADOR
	PORT(
		entrada1 : IN std_logic_vector(31 downto 0);
		entrada2 : IN std_logic_vector(31 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	
-- se�ales del procesador
signal SUMADOR_NPC, NPC_PC, PC_IM : STD_LOGIC_VECTOR (31 downto 0);


begin

-- pc
Inst_PC: PC PORT MAP(
		entrada => NPC_PC,
		salida => PC_IM,
		rst => rst,
		clk => clk
	);


-- NPC
Inst_NPC: NPC PORT MAP(
		ENTRADA => SUMADOR_NPC,
		SALIDA => NPC_PC,
		RST => rst,
		CLK => clk
	);
--sumador
Inst_SUMADOR: SUMADOR PORT MAP(
		entrada1 => x"00000001",
		entrada2 => NPC_PC,
		salida => SUMADOR_NPC
	);

end arquitectura_procesador_2;

