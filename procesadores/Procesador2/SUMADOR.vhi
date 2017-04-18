
-- VHDL Instantiation Created from source file SUMADOR.vhd -- 00:27:17 04/18/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SUMADOR
	PORT(
		entrada1 : IN std_logic_vector(31 downto 0);
		entrada2 : IN std_logic_vector(31 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SUMADOR: SUMADOR PORT MAP(
		entrada1 => ,
		entrada2 => ,
		salida => 
	);


