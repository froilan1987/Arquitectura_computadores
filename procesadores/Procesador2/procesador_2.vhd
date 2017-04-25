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

-- ALU
COMPONENT ALU
	PORT(
		rs1 : IN std_logic_vector(31 downto 0);
		rs2 : IN std_logic_vector(31 downto 0);
		entrada : IN std_logic_vector(5 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;


-- SEU
COMPONENT SEU
	PORT(
		entrada : IN std_logic_vector(12 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	
-- MUX
	COMPONENT MUX
	PORT(
		e1_mux : IN std_logic_vector(31 downto 0);
		e2_mux : IN std_logic_vector(31 downto 0);
		señal_mux : IN std_logic;          
		salida_mux : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;



-- RF
COMPONENT RF
	PORT(
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rsd : IN std_logic_vector(4 downto 0);
		dwr : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;          
		crs1 : OUT std_logic_vector(31 downto 0);
		crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	

-- UC
COMPONENT UC
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		salida : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	
-- IM
COMPONENT IM
	PORT(
		entrada : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	
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
		rst : IN std_logic;
		clk : IN std_logic;          
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

	
-- señales del procesador
signal SUMADOR_NPC, NPC_PC, PC_IM, IM_UC_RF_SEU, ALU_RF, RF_ALU, RF_MUX, SEV_MUX, MUX_ALU : STD_LOGIC_VECTOR (31 downto 0);
signal UC_ALU : STD_LOGIC_VECTOR (5 downto 0);


begin

	s_procesador_2 <= ALU_RF;

--ALU
	Inst_ALU: ALU PORT MAP(
		rs1 => RF_ALU,
		rs2 => MUX_ALU,
		entrada => UC_ALU,
		salida => ALU_RF
	);


--SEU
Inst_SEU: SEU PORT MAP(
		entrada => IM_UC_RF_SEU(12 downto 0),
		salida => SEV_MUX
	);

--MUX
	Inst_MUX: MUX PORT MAP(
		e1_mux => RF_MUX,
		e2_mux => SEV_MUX,
		señal_mux => IM_UC_RF_SEU(13),
		salida_mux => MUX_ALU 
	);
-- RF
Inst_RF: RF PORT MAP(
		rs1 => IM_UC_RF_SEU(18 downto 14),
		rs2 => IM_UC_RF_SEU(4 downto 0),
		rsd => IM_UC_RF_SEU(29 downto 25),
		dwr => ALU_RF,
		crs1 => RF_ALU,
		crs2 => RF_MUX,
		rst => rst 
	);
-- UC
Inst_UC: UC PORT MAP(
		op => IM_UC_RF_SEU(31 downto 30),
		op3 => IM_UC_RF_SEU(24 downto 19),
		salida => UC_ALU
	);
-- IM
Inst_IM: IM PORT MAP(
		entrada => PC_IM,
		salida => IM_UC_RF_SEU,
		rst => rst
	);
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
		rst => rst,
		clk => clk
	);
--sumador
Inst_SUMADOR: SUMADOR PORT MAP(
		entrada1 => x"00000001",
		entrada2 => PC_IM,
		salida => SUMADOR_NPC
	);

end arquitectura_procesador_2;

