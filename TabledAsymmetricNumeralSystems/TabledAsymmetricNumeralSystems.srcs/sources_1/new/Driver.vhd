
library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Driver is
    Port ( 
           clk : in STD_LOGIC;
           init : in STD_LOGIC;
           start : in STD_LOGIC;
           reset_ram : out STD_LOGIC;
           
           amount_bytes : out STD_LOGIC_VECTOR(31 downto 0);
           start_encoder : out STD_LOGIC;
           init_encoder : out STD_LOGIC;
            
           start_nb_enable : out STD_LOGIC;
           start_address : out STD_LOGIC_VECTOR (31 downto 0);
           nb_address : out STD_LOGIC_VECTOR (31 downto 0);                                 
           start_from_ram : in STD_LOGIC_VECTOR (31 downto 0);
           nb_from_ram : in STD_LOGIC_VECTOR (31 downto 0);
           
           nbBits_for_encoder : out STD_LOGIC_VECTOR(7 downto 0);
           
           state_enable : out STD_LOGIC;
           state_for_encoder : out STD_LOGIC_VECTOR(15 downto 0) := x"0000";
           state_address : out STD_LOGIC_VECTOR (31 downto 0);
           state_from_ram : in STD_LOGIC_VECTOR(31 downto 0);
                      
           --dataIn Ram
           new_data : out STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (31 downto 0);
           data_in_address : out STD_LOGIC_VECTOR (31 downto 0);
           data_in_enable : out STD_LOGIC;
           
           --dataOut Ram
           data_produced : in STD_LOGIC;
           data_out_from_encoder : in STD_LOGIC_VECTOR (15 downto 0);
           data_out_address : out STD_LOGIC_VECTOR (31 downto 0);
           data_out_to_save : out STD_LOGIC_VECTOR (31 downto 0);
           out_enable : out STD_LOGIC;
           write_enable : out STD_LOGIC_VECTOR(3 downto 0));
end Driver;

architecture Communicate of Driver is

type state_type is (IDLE, GET_AMOUNT_BYTES, GET_rValue, RUN_ENCODER, GET_NEW_DATA, COMPUTE_NB_BITS);

signal 
    get_new_state, compute_nbBits, set_new_state, init_state : STD_LOGIC := '0';
signal 
    current_state, next_state : state_type;
signal 
    r_value_int, nb_bits_int : integer := 0;
signal
    not_shifted_nb : STD_LOGIC_VECTOR(31 downto 0);
begin

state_machine: process(clk)
    begin
     if(rising_edge(clk)) then
        if(init = '1')then
            current_state <= IDLE;
        else
            current_state <= next_state;
        end if;
      end if;
    end process;

save_output: process(clk, data_produced)
variable mem_point: integer;
    begin
        if(rising_edge(clk))then
            if(data_produced = '1') then
                data_out_address <= x"0000_0000" + STD_LOGIC_VECTOR(to_unsigned(mem_point, 31));
                mem_point := mem_point + 4;
                data_out_to_save <= (15 downto 0 => '0') & data_out_from_encoder;
                write_enable <= x"F";
                out_enable <= '1';
            else
                out_enable <= '0';
                write_enable <= x"0";
                
            end if;
        end if;
    end process;

nbbits: process(clk, state_from_ram, nb_from_ram, compute_nbBits)
    variable nb_bits : STD_LOGIC_VECTOR(31 downto 0) := x"00000000";
    begin
        if(falling_edge(clk)) then
            if(compute_nbBits = '1') then
                not_shifted_nb <= STD_LOGIC_VECTOR(unsigned(state_from_ram) + unsigned(nb_from_ram));
                get_new_state <= '1';
                new_data <= '1';
            else
                get_new_state <= '0';      
                new_data <= '0';
            end if;
        end if;
    end process;

send_proper_nbBits: process(not_shifted_nb, r_value_int)
begin
    case r_value_int is
        when 2 => 
            nbBits_for_encoder <= not_shifted_nb(9 downto 2);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(9 downto 2)));
        when 3 =>
            nbBits_for_encoder <= not_shifted_nb(10 downto 3);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(10 downto 3)));
        when 4 =>
            nbBits_for_encoder <= not_shifted_nb(11 downto 4);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(11 downto 4)));
        when 5 =>
            nbBits_for_encoder <= not_shifted_nb(12 downto 5);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(12 downto 5)));                   
        when 6 =>
            nbBits_for_encoder <= not_shifted_nb(13 downto 6);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(13 downto 6)));              
        when 7 =>
            nbBits_for_encoder <= not_shifted_nb(14 downto 7);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(14 downto 7)));                           
        when 8 =>
            nbBits_for_encoder <= not_shifted_nb(15 downto 8);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(15 downto 8)));                            
        when 9 =>
            nbBits_for_encoder <= "0" & not_shifted_nb(15 downto 9);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(15 downto 9)));                           
        when 10 =>
            nbBits_for_encoder <= "00" & not_shifted_nb(15 downto 10);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(15 downto 10)));              
        when 11 =>
            nbBits_for_encoder <= "000" & not_shifted_nb(15 downto 11);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(15 downto 11)));                            
        when 12 =>
            nbBits_for_encoder <= "0000" & not_shifted_nb(15 downto 12);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(15 downto 12)));
        when 13 =>
            nbBits_for_encoder <= "00000" & not_shifted_nb(15 downto 13);
            nb_bits_int <= to_integer(unsigned(not_shifted_nb(15 downto 13)));
        when others =>
            nbBits_for_encoder <= x"00";                                                                
end case;

end process;

get_state: process(clk, get_new_state)
variable computed_state : STD_LOGIC_VECTOR(31 downto 0);
begin
    if(rising_edge(clk)) then
        if(get_new_state = '1' or init_state = '1') then
            case nb_bits_int is
                when 1 => 
                    computed_state := start_from_ram + ((16 downto 0 => '0') & state_from_ram(15 downto 1));
                when 2 =>
                    computed_state := start_from_ram + ((17 downto 0 => '0') & state_from_ram(15 downto 2));
                when 3 =>
                    computed_state := start_from_ram + ((18 downto 0 => '0') & state_from_ram(15 downto 3));
                when 4 =>
                    computed_state := start_from_ram + ((19 downto 0 => '0') & state_from_ram(15 downto 4));
                when 5 =>   
                    computed_state := start_from_ram + ((20 downto 0 => '0') & state_from_ram(15 downto 5));
                when 6 =>
                    computed_state := start_from_ram + ((21 downto 0 => '0') & state_from_ram(15 downto 6));
                when 7 =>
                    computed_state := start_from_ram + ((22 downto 0 => '0') & state_from_ram(15 downto 7));
                when others =>
                    computed_state := start_from_ram;
            end case;
                  
             state_address <= x"0000_0000" + (computed_state(29 downto 0) & (1 downto 0 => '0'));
                   
        end if;        
    end if;
end process;

state_for_encoder <= state_from_ram(15 downto 0);



main_process: process(current_state, start, data_in)
    variable mem_point, counter, amount : integer := 0;
    begin 
        next_state <= current_state;
    
        case current_state is
            when IDLE =>
                            
                start_nb_enable <= '0';
                data_in_enable <= '0';
                
                compute_nbBits <= '0';
                
                if(start = '1') then
                    reset_ram <= '0';
                    init_state <= '1';
                    init_encoder <= '1';
                    start_nb_enable <= '1';
                    data_in_enable <= '1';
                    state_enable <= '1';
                    
                    next_state <= GET_AMOUNT_BYTES;
                    data_in_address <= x"0000_0000";
                end if;
            
            when GET_AMOUNT_BYTES =>
               
                init_state <= '0';
                init_encoder <= '0';
                start_encoder <= '1';
                amount_bytes <= data_in;
                
                amount := to_integer(unsigned(data_in));
                 
                mem_point := mem_point + 4;
                data_in_address <= x"0000_0004";
                
                next_state <= GET_rValue;
            
           when GET_rValue =>
           
                r_value_int <= to_integer(unsigned(data_in(7 downto 0))) + 1; 
                data_in_address <= x"0000_0008";
                start_encoder <= '0';
                mem_point := mem_point + 4;
                counter := counter + 1;
                
                next_state <= GET_NEW_DATA;     
                 
           when GET_NEW_DATA =>
                
                start_address <= x"0000_0000" + (data_in(29 downto 0) & (1 downto 0 => '0'));
                nb_address <= x"0000_0000" + (data_in(29 downto 0) & (1 downto 0 => '0'));
                compute_nbBits <= '0';              
          
                next_state <= COMPUTE_NB_BITS;
                                          
           when COMPUTE_NB_BITS =>
                compute_nbBits <= '1';  
                               
                if(counter = amount)then
                     next_state <= IDLE;                   
                else
                     data_in_address <= STD_LOGIC_VECTOR(to_unsigned(mem_point, 32));
                     
                     counter := counter + 1;
                     mem_point := mem_point + 4;  
 
                     next_state <= GET_NEW_DATA;
                 end if;

                                                                     
           when RUN_ENCODER =>
                
                compute_nbBits <= '0';              
                --get_new_state <= '1';
          --      new_data <= '0';
                          
                if(counter = amount)then
                     next_state <= IDLE;                   
                 else
                     data_in_address <= STD_LOGIC_VECTOR(to_unsigned(mem_point, 32));
                     
                     counter := counter + 1;
                     mem_point := mem_point + 4;  
 
                     next_state <= GET_NEW_DATA;
                 end if;

       end case;     
    end process;
end Communicate;
