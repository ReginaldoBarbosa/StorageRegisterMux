LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY storageRegister IS
	PORT(	ent: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clk: STD_LOGIC;
		q: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END ENTITY;

ARCHITECTURE comportamento OF storageRegister IS
	COMPONENT ffd IS 
		PORT(d,e,set,rest,clock: IN STD_LOGIC; 
			q: OUT STD_LOGIC);
	END COMPONENT;


BEGIN 	
 
	parte1: ffd PORT MAP(ent(7),'1','0','0',clk,q(7));
	parte2: ffd PORT MAP(ent(6),'1','0','0',clk,q(6));
	parte3: ffd PORT MAP(ent(5),'1','0','0',clk,q(5));
	parte4: ffd PORT MAP(ent(4),'1','0','0',clk,q(4));
	parte5: ffd PORT MAP(ent(3),'1','0','0',clk,q(3));
	parte6: ffd PORT MAP(ent(2),'1','0','0',clk,q(2));
	parte7: ffd PORT MAP(ent(1),'1','0','0',clk,q(1));
	parte8: ffd PORT MAP(ent(0),'1','0','0',clk,q(0));
	
END ARCHITECTURE;




