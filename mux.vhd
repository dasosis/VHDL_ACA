library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4to1 is
    Port (
        I0, I1, I2, I3 : in STD_LOGIC;
        S0, S1 : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end MUX_4to1;

architecture Behavioral of MUX_4to1 is
    signal S : std_logic_vector(1 downto 0);
begin
    process(I0, I1, I2, I3, S0, S1)
    begin
        S <= S1 & S0;
        case S is
            when "00" => Y <= I0;
            when "01" => Y <= I1;
            when "10" => Y <= I2;
            when others => Y <= I3;
        end case;
    end process;
end Behavioral;