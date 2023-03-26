LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY ffd IS
	PORT(d,e,set,rest,clock: IN STD_LOGIC; 
		q: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE comportamento OF ffd IS
BEGIN
	PROCESS(d,e,set,rest,clock)
	BEGIN
		--SET EM 1 E RESET EM 0, RETORNA 1 
		IF set = '1' AND rest = '0' THEN
			q <= '1';
		END IF;
		--SET EM 0 E RESET EM 1, RETORNA 0 
		IF set = '0' AND rest = '1' THEN 
			q <= '0';
		END IF;
		--SE ENABLE ESTIVER EM 0, ELE NÃO COMUTA
		IF e = '0' THEN
			q <= '0';
		END IF;
		--SE TUDO ESTIVER CORRETO, SERÁ ACIONADO O FFD NO EVENTO DE SUBIDA DO CLOCK
		IF clock'EVENT AND clock = '1' THEN
			q <= d; 
		END IF;
		
	END PROCESS;
	
END ARCHITECTURE;


