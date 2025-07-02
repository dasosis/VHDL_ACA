library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_2to4 is
    Port ( A : in STD_LOGIC_VECTOR(1 downto 0);
        EN : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR(3 downto 0));
    end Decoder_2to4;

architecture Behavioral of Decoder_2to4 is
begin
    process(A, EN)
    begin
        if EN = '1' then
            case A is
                when "00" => Y <= "0001";
                when "01" => Y <= "0010";
                when "10" => Y <= "0100";
                when others => Y <= "1000";
            end case;
        else
            Y <= "0000";
        end if;
    end process;
end Behavioral;