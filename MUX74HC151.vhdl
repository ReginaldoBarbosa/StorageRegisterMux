library ieee;
use ieee.std_logic_1164.all;

entity MUX74HC151 is
	port (
 	   S : in std_logic_vector(2 downto 0); -- Seleção de entrada
 	   I : in std_logic_vector(7 downto 0); -- Entradas de dados
  	  EN : in std_logic; -- Sinal de enable negado
  	   Z : out std_logic -- Saída de dados
	);
end MUX74HC151;

architecture comportamento of MUX74HC151 is
begin
    process(S, I, EN)
    begin
        if EN = '0' then 
            case S is
                when "000" => Z <= I(0);
                when "001" => Z <= I(1);
                when "010" => Z <= I(2);
                when "011" => Z <= I(3);
                when "100" => Z <= I(4);
                when "101" => Z <= I(5);
                when "110" => Z <= I(6);
                when "111" => Z <= I(7);
                when others => Z <= 'X';
            end case;
        else
            Z <= 'Z'; -- Saída em alta impedância quando o enable está inativo
        end if;
    end process;
end comportamento;

