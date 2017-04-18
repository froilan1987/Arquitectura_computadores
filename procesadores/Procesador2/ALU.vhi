
-- VHDL Instantiation Created from source file ALU.vhd -- 01:29:40 04/18/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		rs1 : IN std_logic_vector(31 downto 0);
		rs2 : IN std_logic_vector(31 downto 0);
		entrada : IN std_logic_vector(5 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		rs1 => ,
		rs2 => ,
		entrada => ,
		salida => 
	);


