LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY redClock IS
	PORT ( clock : IN STD_LOGIC; 
	  	   q : OUT STD_LOGIC:= '0');
END redClock ;

ARCHITECTURE comportamento OF redClock IS
	
	SIGNAL outq: STD_LOGIC := '0';
	SIGNAL aux : INTEGER RANGE 0 TO 50000001 := 0;
	
BEGIN

	PROCESS (clock) 

	BEGIN
		IF (clock'EVENT AND clock = '1') THEN
			aux <= aux + 1;
			
			IF aux 	= 25000000 THEN
				
				outq <= not outq;
				aux <= 0;
			END IF;
			
		END IF;

	END PROCESS ;
		q <= outq;
END comportamento;



