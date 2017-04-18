
-- VHDL Instantiation Created from source file NPC.vhd -- 00:33:08 04/18/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT NPC
	PORT(
		ENTRADA : IN std_logic_vector(31 downto 0);
		RST : IN std_logic;
		CLK : IN std_logic;          
		SALIDA : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_NPC: NPC PORT MAP(
		ENTRADA => ,
		SALIDA => ,
		RST => ,
		CLK => 
	);


