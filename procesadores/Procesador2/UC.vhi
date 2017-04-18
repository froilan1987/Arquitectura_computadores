
-- VHDL Instantiation Created from source file UC.vhd -- 00:49:49 04/18/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UC
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		salida : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_UC: UC PORT MAP(
		op => ,
		op3 => ,
		salida => 
	);


