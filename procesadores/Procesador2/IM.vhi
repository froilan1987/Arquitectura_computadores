
-- VHDL Instantiation Created from source file IM.vhd -- 00:43:22 04/18/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT IM
	PORT(
		entrada : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_IM: IM PORT MAP(
		entrada => ,
		salida => ,
		rst => 
	);


