
-- VHDL Instantiation Created from source file MUX.vhd -- 01:06:05 04/18/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX
	PORT(
		e1_mux : IN std_logic_vector(31 downto 0);
		e2_mux : IN std_logic_vector(31 downto 0);
		señal_mux : IN std_logic;          
		salida_mux : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MUX: MUX PORT MAP(
		e1_mux => ,
		e2_mux => ,
		señal_mux => ,
		salida_mux => 
	);


