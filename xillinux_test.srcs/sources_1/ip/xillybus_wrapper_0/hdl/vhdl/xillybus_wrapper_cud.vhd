-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity xillybus_wrapper_cud_rom is 
    generic(
             DWIDTH     : integer := 30; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of xillybus_wrapper_cud_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "100000000000000000000000000000", 1 => "011111111111111101100010000110", 
    2 => "011111111111110110001000010111", 3 => "011111111111101001110010110100", 
    4 => "011111111111011000100001100001", 5 => "011111111111000010010100011110", 
    6 => "011111111110100111001011110000", 7 => "011111111110000111000111011011", 
    8 => "011111111101100010000111100100", 9 => "011111111100111000001100010000", 
    10 => "011111111100001001010101100110", 11 => "011111111011010101100011101101", 
    12 => "011111111010011100110110101101", 13 => "011111111001011111001110101111", 
    14 => "011111111000011100101011111101", 15 => "011111110111010101001110100000", 
    16 => "011111110110001000110110100100", 17 => "011111110100110111100100010100", 
    18 => "011111110011100001010111111110", 19 => "011111110010000110010001101101", 
    20 => "011111110000100110010001110001", 21 => "011111101111000001011000011000", 
    22 => "011111101101010111100101110010", 23 => "011111101011101000111010001110", 
    24 => "011111101001110101010101111111", 25 => "011111100111111100111001010110", 
    26 => "011111100101111111100100100101", 27 => "011111100011111101011000000000", 
    28 => "011111100001110110010011111011", 29 => "011111011111101010011000101010", 
    30 => "011111011101011001100110100100", 31 => "011111011011000011111101111110", 
    32 => "011111011000101001011111010000", 33 => "011111010110001010001010110010", 
    34 => "011111010011100110000000111011", 35 => "011111010000111101000010000110", 
    36 => "011111001110001111001110101101", 37 => "011111001011011100100111001001", 
    38 => "011111001000100101001011111000", 39 => "011111000101101000111101010100", 
    40 => "011111000010100111111011111100", 41 => "011110111111100010001000001100", 
    42 => "011110111100010111100010100100", 43 => "011110111001001000001011100011", 
    44 => "011110110101110100000011101000", 45 => "011110110010011011001011010100", 
    46 => "011110101110111101100011001001", 47 => "011110101011011011001011101001", 
    48 => "011110100111110100000101010111", 49 => "011110100100001000010000110110", 
    50 => "011110100000010111101110101011", 51 => "011110011100100010011111011100", 
    52 => "011110011000101000100011101100", 53 => "011110010100101001111100000101", 
    54 => "011110010000100110101001001011", 55 => "011110001100011110101011101001", 
    56 => "011110001000010010000100000101", 57 => "011110000100000000110011001010", 
    58 => "011101111111101010111001100010", 59 => "011101111011010000010111111000", 
    60 => "011101110110110001001110110111", 61 => "011101110010001101011111001011", 
    62 => "011101101101100101001001100010", 63 => "011101101000111000001110101010", 
    64 => "011101100100000110101111001111", 65 => "011101011111010000101100000011", 
    66 => "011101011010010110000101110100", 67 => "011101010101010110111101010011", 
    68 => "011101010000010011010011010010", 69 => "011101001011001011001000100001", 
    70 => "011101000101111110011101110101", 71 => "011101000000101101010011111111", 
    72 => "011100111011010111101011110101", 73 => "011100110101111101100110001010", 
    74 => "011100110000011111000011110100", 75 => "011100101010111100000101101010", 
    76 => "011100100101010100101100100001", 77 => "011100011111101000111001010010", 
    78 => "011100011001111000101100110101", 79 => "011100010100000100001000000001", 
    80 => "011100001110001011001011110010", 81 => "011100001000001101111001000000", 
    82 => "011100000010001100010000100111", 83 => "011011111100000110010011100010", 
    84 => "011011110101111100000010101101", 85 => "011011101111101101011111000101", 
    86 => "011011101001011010101001101000", 87 => "011011100011000011100011010011", 
    88 => "011011011100101000001101000101", 89 => "011011010110001000100111111111", 
    90 => "011011001111100100110100111111", 91 => "011011001000111100110101000111", 
    92 => "011011000010010000101001011000", 93 => "011010111011100000010010110101", 
    94 => "011010110100101011110010011110", 95 => "011010101101110011001001011001", 
    96 => "011010100110110110011000101001", 97 => "011010011111110101100001010011", 
    98 => "011010011000110000100100011011", 99 => "011010010001100111100011001000", 
    100 => "011010001010011010011110100001", 101 => "011010000011001001010111101011", 
    102 => "011001111011110100001111110000", 103 => "011001110100011011000111110110", 
    104 => "011001101100111110000001001000", 105 => "011001100101011100111100101111", 
    106 => "011001011101110111111011110101", 107 => "011001010110001110111111100101", 
    108 => "011001001110100010001001001010", 109 => "011001000110110001011001110000", 
    110 => "011000111110111100110010100100", 111 => "011000110111000100010100110011", 
    112 => "011000101111001000000001101011", 113 => "011000100111000111111010011011", 
    114 => "011000011111000100000000010000", 115 => "011000010110111100010100011011", 
    116 => "011000001110110000111000001100", 117 => "011000000110100001101100110100", 
    118 => "010111111110001110110011100100", 119 => "010111110101111000001101101101", 
    120 => "010111101101011101111100100011", 121 => "010111100101000000000001011000", 
    122 => "010111011100011110011101011111", 123 => "010111010011111001010010001110", 
    124 => "010111001011010000100000111000", 125 => "010111000010100100001010110100", 
    126 => "010110111001110100010001010101", 127 => "010110110001000000110101110100", 
    128 => "011001001000011111101101010100", 129 => "011001001000011111000011111110", 
    130 => "011001001000011101000111111101", 131 => "011001001000011001111001010000", 
    132 => "011001001000010101010111111000", 133 => "011001001000001111100011110101", 
    134 => "011001001000001000011101001000", 135 => "011001001000000000000011110001", 
    136 => "011001000111110110010111110001", 137 => "011001000111101011011001001010", 
    138 => "011001000111011111000111111011", 139 => "011001000111010001100100000111", 
    140 => "011001000111000010101101101110", 141 => "011001000110110010100100110011", 
    142 => "011001000110100001001001010101", 143 => "011001000110001110011011011000", 
    144 => "011001000101111010011010111100", 145 => "011001000101100101001000000100", 
    146 => "011001000101001110100010110001", 147 => "011001000100110110101011000110", 
    148 => "011001000100011101100001000101", 149 => "011001000100000011000100110000", 
    150 => "011001000011100111010110001010", 151 => "011001000011001010010101010101", 
    152 => "011001000010101100000010010011", 153 => "011001000010001100011101001001", 
    154 => "011001000001101011100101111000", 155 => "011001000001001001011100100011", 
    156 => "011001000000100110000001001110", 157 => "011001000000000001010011111101", 
    158 => "011000111111011011010100110001", 159 => "011000111110110100000011110000", 
    160 => "011000111110001011100000111100", 161 => "011000111101100001101100011010", 
    162 => "011000111100110110100110001101", 163 => "011000111100001010001110011001", 
    164 => "011000111011011100100101000010", 165 => "011000111010101101101010001101", 
    166 => "011000111001111101011101111110", 167 => "011000111001001100000000011001", 
    168 => "011000111000011001010001100011", 169 => "011000110111100101010001100000", 
    170 => "011000110110110000000000010110", 171 => "011000110101111001011110001001", 
    172 => "011000110101000001101010111110", 173 => "011000110100001000100110111011", 
    174 => "011000110011001110010010000101", 175 => "011000110010010010101100100000", 
    176 => "011000110001010101110110010100", 177 => "011000110000010111101111100100", 
    178 => "011000101111011000011000011000", 179 => "011000101110010111110000110101", 
    180 => "011000101101010101111001000000", 181 => "011000101100010010110001000000", 
    182 => "011000101011001110011000111100", 183 => "011000101010001000110000111001", 
    184 => "011000101001000001111000111101", 185 => "011000100111111001110001010000", 
    186 => "011000100110110000011001111001", 187 => "011000100101100101110010111101", 
    188 => "011000100100011001111100100011", 189 => "011000100011001100110110110100", 
    190 => "011000100001111110100001110101", 191 => "011000100000101110111101101110", 
    192 => "011000011111011110001010100111", 193 => "011000011110001100001000100110", 
    194 => "011000011100111000110111110100", 195 => "011000011011100100011000011000", 
    196 => "011000011010001110101010011010", 197 => "011000011000110111101110000010", 
    198 => "011000010111011111100011010111", 199 => "011000010110000110001010100011", 
    200 => "011000010100101011100011101100", 201 => "011000010011001111101110111101", 
    202 => "011000010001110010101100011100", 203 => "011000010000010100011100010010", 
    204 => "011000001110110100111110101001", 205 => "011000001101010100010011101010", 
    206 => "011000001011110010011011011100", 207 => "011000001010001111010110001001", 
    208 => "011000001000101011000011111010", 209 => "011000000111000101100100111000", 
    210 => "011000000101011110111001001101", 211 => "011000000011110111000001000011", 
    212 => "011000000010001101111100100010", 213 => "011000000000100011101011110100", 
    214 => "010111111110111000001111000011", 215 => "010111111101001011100110011010", 
    216 => "010111111011011101110010000010", 217 => "010111111001101110110010000101", 
    218 => "010111110111111110100110101101", 219 => "010111110110001101010000000101", 
    220 => "010111110100011010101110010110", 221 => "010111110010100111000001101101", 
    222 => "010111110000110010001010010011", 223 => "010111101110111100001000010011", 
    224 => "010111101101000100111011111000", 225 => "010111101011001100100101001100", 
    226 => "010111101001010011000100011100", 227 => "010111100111011000011001110001", 
    228 => "010111100101011100100101011000", 229 => "010111100011011111100111011100", 
    230 => "010111100001100001100000001000", 231 => "010111011111100010001111100111", 
    232 => "010111011101100001110110000110", 233 => "010111011011100000010011110000", 
    234 => "010111011001011101101000110010", 235 => "010111010111011001110101010110", 
    236 => "010111010101010100111001101010", 237 => "010111010011001110110101111001", 
    238 => "010111010001000111101010010000", 239 => "010111001110111111010110111010", 
    240 => "010111001100110101111100000110", 241 => "010111001010101011011001111110", 
    242 => "010111001000011111110000110001", 243 => "010111000110010011000000101010", 
    244 => "010111000100000101001001110111", 245 => "010111000001110110001100100101", 
    246 => "010110111111100110001001000000", 247 => "010110111101010100111111010110", 
    248 => "010110111011000010101111110100", 249 => "010110111000101111011010101000", 
    250 => "010110110110011010111111111110", 251 => "010110110100000101100000000110", 
    252 => "010110110001101110111011001100", 253 => "010110101111010111010001011101", 
    254 => "010110101100111110100011001001", 255 => "010110101010100100110000011101" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity xillybus_wrapper_cud is
    generic (
        DataWidth : INTEGER := 30;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of xillybus_wrapper_cud is
    component xillybus_wrapper_cud_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    xillybus_wrapper_cud_rom_U :  component xillybus_wrapper_cud_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


