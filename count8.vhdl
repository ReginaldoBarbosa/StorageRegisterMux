LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY count8 IS
	PORT ( Clock, Reset, Enable : IN STD_LOGIC ; 
				  Q : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)) ;
END count8 ;

ARCHITECTURE comportamento OF count8 IS

SIGNAL Count : STD_LOGIC_VECTOR (2 DOWNTO 0) ;

BEGIN

	PROCESS ( Clock, Reset )
	BEGIN
		IF Reset = '0' THEN
			Count <= "000" ;
		ELSIF (Clock'EVENT AND Clock = '1') THEN
			IF Enable = '1' THEN
				Count <= Count + 1 ;
			ELSE
				Count <= Count ;
			END IF ;
		END IF ;
	END PROCESS ;
	
	Q <= Count ;
	
END comportamento;



