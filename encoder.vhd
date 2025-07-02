library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder_4to2 is
    Port ( I : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(1 downto 0);
        V : out STD_LOGIC);
end Encoder_4to2;

architecture Behavioral of Encoder_4to2 is
begin
    process(I)
    begin
        if I(3) = '1' then
            Y <= "11";
            V <= '1';
        elsif I(2) = '1' then
            Y <= "10";
            V <= '1';
        elsif I(1) = '1' then
            Y <= "01";
            V <= '1';
        elsif I(0) = '1' then
            Y <= "00";
            V <= '1';
        else
            Y <= "00";
            V <= '0';
        end if;
    end process;
end Behavioral;