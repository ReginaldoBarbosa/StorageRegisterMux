LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ENTITY teste_lab00 IS 
END ENTITY;

ARCHITECTURE simulacao OF teste_lab00 IS
	COMPONENT integracao IS
		PORT(enable, clock,reset,clk_register: IN STD_LOGIC;
		     dataRegister: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		     s_out:     OUT STD_LOGIC
	     );
	END COMPONENT;
	
	SIGNAL s,clk,res, clk_r: STD_LOGIC;
	SIGNAL datReg: STD_LOGIC_VECTOR(7 DOWNTO 0);	
BEGIN

	tb: integracao PORT MAP('0',clk,res,clk_r,datReg,s);	
	
	PROCESS
	BEGIN
		clk <= '0'; WAIT FOR 50 NS;
		clk_r <= '0'; WAIT FOR 50 NS;
		
		res <= '0'; WAIT FOR 50 NS;
		res <= '1'; WAIT FOR 50 NS;
		
		datReg(0) <= '1';
		datReg(1) <= '0';
		datReg(2) <= '1';
		datReg(3) <= '0';
		datReg(4) <= '1';
		datReg(5) <= '1';
		datReg(6) <= '0';
		datReg(7) <= '1'; WAIT FOR 50 NS;
		clk_r <= '1'; WAIT FOR 50 NS;

		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;					
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;		
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;					
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
		clk <= '0'; WAIT FOR 50 NS;
		clk <= '1'; WAIT FOR 50 NS;
	END PROCESS;

END ARCHITECTURE;




