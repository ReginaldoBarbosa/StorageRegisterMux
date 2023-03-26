LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY integracao IS
	PORT(enable, clock,reset,clk_register: IN STD_LOGIC;
	     dataRegister: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	     s_out:     OUT STD_LOGIC
	     );
END ENTITY;

ARCHITECTURE comportamento OF integracao IS
	COMPONENT storageRegister IS
		PORT (	ent: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clk: STD_LOGIC;
			q: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT count8 IS
		PORT (Clock, Reset, Enable : IN STD_LOGIC ; 
					 Q : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)); 
	END COMPONENT;	

	COMPONENT MUX74HC151 is
		PORT (S : in std_logic_vector(2 downto 0); -- Seleção de entrada
 	  	      I : in std_logic_vector(7 downto 0); -- Entradas de dados
  	 	     EN : in std_logic; -- Sinal de enable negado
  	 	      Z : out std_logic); -- Saída de dados
	END COMPONENT;
	
	COMPONENT redClock IS
		PORT ( clock : IN STD_LOGIC; 
		  	   q : OUT STD_LOGIC:= '0');
	END COMPONENT;
	
	SIGNAL x: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL s: STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL clk: STD_LOGIC;
	

BEGIN  
	redut : redClock        PORT MAP(clock,clk);
	partea: storageRegister PORT MAP(dataRegister,clk_register,x);
	parteb: count8          PORT MAP(clk,reset,'1',s);
	partec: MUX74HC151      PORT MAP(s,x,enable,s_out);

END ARCHITECTURE;



