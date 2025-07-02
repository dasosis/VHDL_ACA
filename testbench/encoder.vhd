library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture sim of testbench is
    signal I : STD_LOGIC_VECTOR(3 downto 0);
    signal Y : STD_LOGIC_VECTOR(1 downto 0);
    signal V : STD_LOGIC;
begin
    uut: entity work.Encoder_4to2
        port map (
            I => I,
            Y => Y,
            V => V
        );

    process
    begin
        I <= "0000"; wait for 10 ns;
        I <= "0001"; wait for 10 ns;
        I <= "0010"; wait for 10 ns;
        I <= "0011"; wait for 10 ns;
        I <= "0100"; wait for 10 ns;
        I <= "0101"; wait for 10 ns;
        I <= "0110"; wait for 10 ns;
        I <= "0111"; wait for 10 ns;
        I <= "1000"; wait for 10 ns;
        I <= "1001"; wait for 10 ns;
        I <= "1010"; wait for 10 ns;
        I <= "1011"; wait for 10 ns;
        I <= "1100"; wait for 10 ns;
        I <= "1101"; wait for 10 ns;
        I <= "1110"; wait for 10 ns;
        I <= "1111"; wait for 10 ns;
        wait;
    end process;
end sim;
