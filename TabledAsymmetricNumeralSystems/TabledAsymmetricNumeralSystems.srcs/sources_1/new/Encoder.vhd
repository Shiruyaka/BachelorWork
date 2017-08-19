library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL; 
USE IEEE.NUMERIC_STD;

entity Encoder is
    Port ( 
           init : in STD_LOGIC;
           start : in STD_LOGIC;
           clk : in STD_LOGIC;
           new_symbol : in STD_LOGIC;
           
           produce_symbol : out STD_LOGIC;
           
           amount_bytes : in STD_LOGIC_VECTOR(31 downto 0);
           nbBits : in STD_LOGIC_VECTOR(7 downto 0); 
           stream : out STD_LOGIC_VECTOR(15 downto 0);
           x : in STD_LOGIC_VECTOR(15 downto 0)
          );
end Encoder;

architecture encode of Encoder is

type state_type is (IDLE, GET_SYMBOL, ENCODING, EMPTY_BUFF, EMPTY_BUFF_2, OUT_AM_BYTES, OUT_STATE);
signal current_state, next_state : state_type;

signal go_to_emmpty: std_logic;
signal buffor: std_logic_vector(0 to 31):= x"00000000";
signal encoded_symbol, end_state: std_logic_vector(0 to 7) := x"00";
signal action: std_logic_vector(0 to 2) := "000";
signal buffor_fill, bits, disjointed_bytes: integer := 0;

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
    
    
    update_buffor: process(clk, action)
    
    variable counter: integer := 0;
    
    begin 
        if(rising_edge(clk))then
            
            case action is
            
            when "001" =>
                counter := counter + 1;
                
                if(buffor_fill + bits >= 8) then
                   
                    case buffor_fill is
                        when 1 =>
                            stream <= (0 to 7 => '0') & encoded_symbol(1 to 7) & buffor(31 to 31);
                        when 2 =>
                            stream <= (0 to 7 => '0') & encoded_symbol(2 to 7) & buffor(30 to 31);
                        when 3 =>
                            stream <= (0 to 7 => '0') & encoded_symbol(3 to 7) & buffor(29 to 31);
                        when 4 =>
                            stream <= (0 to 7 => '0') & encoded_symbol(4 to 7) & buffor(28 to 31);
                        when 5 =>
                            stream <= (0 to 7 => '0') & encoded_symbol(5 to 7) & buffor(27 to 31);
                        when 6 =>
                            stream <= (0 to 7 => '0') & encoded_symbol(6 to 7) & buffor(26 to 31);
                        when 7 =>
                            stream <= (0 to 7 => '0') & encoded_symbol(7 to 7) & buffor(25 to 31);
                        when others => NULL;
                    end case;
                    
                    produce_symbol <= '1';
                    
                    case buffor_fill is
                        when 7 => 
                            case bits is
                                when 2 =>
                                    buffor <= (0 to 30 => '0') & encoded_symbol(6 to 6);
                                when 3 =>
                                    buffor <= (0 to 29 => '0') & encoded_symbol(5 to 6);
                                when 4 =>
                                    buffor <= (0 to 28 => '0') & encoded_symbol(4 to 6);
                                when 5 =>
                                    buffor <= (0 to 27 => '0') & encoded_symbol(3 to 6);
                                when 6 =>
                                    buffor <= (0 to 26 => '0') & encoded_symbol(2 to 6);
                                when 7 =>
                                    buffor <= (0 to 25 => '0') & encoded_symbol(1 to 6);
                                when others => buffor <= (0 to 31 => '0');
                            end case;
                            
                        when 6 => 
                            case bits is
                                when 3 =>
                                    buffor <= (0 to 30 => '0') & encoded_symbol(5 to 5);
                                when 4 =>
                                    buffor <= (0 to 29 => '0') & encoded_symbol(4 to 5);
                                when 5 =>
                                    buffor <= (0 to 28 => '0') & encoded_symbol(3 to 5);
                                when 6 =>
                                    buffor <= (0 to 27 => '0') & encoded_symbol(2 to 5);
                                when 7 =>
                                    buffor <= (0 to 26 => '0') & encoded_symbol(1 to 5);
                                when others => 
                                    buffor <= (0 to 31 => '0');    
                            end case;
                            
                        when 5 => 
                           case bits is
                                when 4 =>
                                    buffor <= (0 to 30 => '0') & encoded_symbol(4 to 4);
                                when 5 =>
                                    buffor <= (0 to 29 => '0') & encoded_symbol(3 to 4);
                                when 6 =>
                                    buffor <= (0 to 28 => '0') & encoded_symbol(2 to 4);
                                when 7 =>
                                    buffor <= (0 to 27 => '0') & encoded_symbol(1 to 4);
                                when others => buffor <= (0 to 31 => '0');
                           end case;
                           
                        when 4 => 
                            case bits is
                                when 5 =>
                                    buffor <= (0 to 30 => '0') & encoded_symbol(3 to 3);
                                when 6 =>
                                    buffor <= (0 to 29 => '0') & encoded_symbol(2 to 3);
                                when 7 =>
                                    buffor <= (0 to 28 => '0') & encoded_symbol(1 to 3);
                                when others => buffor <= (0 to 31 => '0');
                            end case;
                            
                        when 3 =>
                            case bits is
                                when 6 => 
                                    buffor <= (0 to 30 => '0') & encoded_symbol(2 to 2);
                               when 7 =>
                                    buffor <= (0 to 29 => '0') & encoded_symbol(1 to 2);
                               when others => buffor <= (0 to 31 => '0');                                   
                            end case;
                            
                        when 2 => 
                            case bits is
                                when 7 =>
                                    buffor <= (0 to 30 => '0') & encoded_symbol(1 to 1);
                                when others => buffor <= (0 to 31 => '0');
                            end case;
                        
                        when others => buffor <= (0 to 31 => '0');
                    end case;
                    
                    buffor_fill <= bits - 8 + buffor_fill;
                    
                else
                    
                    case buffor_fill is
                        when 6 =>
                            buffor <= buffor or ((17 downto 0 => '0') & encoded_symbol & (5 downto 0 => '0'));  
                        when 5 =>
                            buffor <= buffor or ((18 downto 0 => '0') & encoded_symbol & (4 downto 0 => '0'));
                        when 4 =>
                            buffor <= buffor or ((19 downto 0 => '0') & encoded_symbol & (3 downto 0 => '0'));
                        when 3 =>
                            buffor <= buffor or ((20 downto 0 => '0') & encoded_symbol & (2 downto 0 => '0'));
                        when 2 =>
                            buffor <= buffor or ((21 downto 0 => '0') & encoded_symbol & (1 downto 0 => '0'));
                        when 1 =>
                            buffor <= buffor or ((22 downto 0 => '0') & encoded_symbol & (0 downto 0 => '0'));
                        when others =>
                            buffor <= buffor or ((23 downto 0 => '0') & encoded_symbol);
                    end case;
                    
                    buffor_fill <= buffor_fill + bits;
                    
                end if;
            
                if(counter = to_integer(unsigned(amount_bytes)))then
                    go_to_emmpty <= '1';
                end if;
                
            when "010" =>
                
                go_to_emmpty <= '0';
                
                if(buffor_fill > 5) then 
                    
                    disjointed_bytes <= disjointed_bytes + 1;
                    produce_symbol <= '1';
                    
                    stream  <= (0 to 7 => '0') & std_logic_vector(to_unsigned(5, 3)) & buffor(27 to 31);
                    buffor_fill <= buffor_fill - 5;
                    buffor <= (4 downto 0 => '0') & buffor(0 to 26);
                
                elsif(buffor_fill > 0) then
                    
                    disjointed_bytes <= disjointed_bytes + 1;
                    produce_symbol <= '1';
                                        
                    stream <= (0 to 7 => '0') & std_logic_vector(to_unsigned(buffor_fill, 3)) &
                              buffor(27 to 31);

                    buffor_fill <= 0;    
                    buffor <= x"00000000";
                
                else
                    
                    buffor <= x"00000000";
                    disjointed_bytes <= 0;
                    produce_symbol <= '1';
                    
                end if;
            
            when "011" =>
                
                stream <= (0 to 7 => '0') & std_logic_vector(to_unsigned(disjointed_bytes, 8));
                produce_symbol <= '1';
                
            when "100" =>
                
                stream <= x;
                produce_symbol <= '1';
                
            when others =>
                produce_symbol <= '0';            
            
            end case;         
        end if;
    end process;
    
    
    encode: process(current_state, start, new_symbol, go_to_emmpty, x, buffor_fill, nbBits)   
        variable nb_bits_int : integer;
        variable state: STD_LOGIC_VECTOR(15 downto 0):= x"0000";
    begin
        next_state <= current_state;
        
        case current_state is
        
        when IDLE =>
            
            action <= "111";
                                       
            if(start = '1')then
                next_state <= GET_SYMBOL;
            end if;       
                 
        when GET_SYMBOL =>    
  
         action <= "111";
         
         
        if(new_symbol = '1')then
        
              
            next_state <= ENCODING;
            
        elsif(go_to_emmpty = '1') then
            action <= "010";
            next_state <= EMPTY_BUFF;
        
        end if;

        when ENCODING =>
            
            --nb_bits_int := to_integer(unsigned(nbBits));
             state := x;
             nb_bits_int := to_integer(unsigned(nbBits));
             bits <= nb_bits_int;
            
            
              
            case nb_bits_int is
                when 1 =>
                    encoded_symbol <= (6 downto 0 => '0') & state(0 downto 0);
                when 2 =>
                    encoded_symbol <= (5 downto 0 => '0') & state(1 downto 0);
                when 3 =>
                    encoded_symbol <= (4 downto 0 => '0') & state(2 downto 0);
                when 4 =>
                    encoded_symbol <= (3 downto 0 => '0') & state(3 downto 0);
                when 5 =>
                    encoded_symbol <= (2 downto 0 => '0') & state(4 downto 0);
                when 6 =>
                    encoded_symbol <= (1 downto 0 => '0') & state(5 downto 0);
                when 7 =>
                    encoded_symbol <= (0 downto 0 => '0') & state(6 downto 0);
                when others => encoded_symbol <= x"00";    
            end case;
            
             
            action <= "001";        
            next_state <= GET_SYMBOL;
                                                
            
        when EMPTY_BUFF =>
            
            
            if(buffor_fill = 0) then
                next_state <= OUT_AM_BYTES;
                action <= "011";
            else
                next_state <= EMPTY_BUFF_2;
            end if;
            
        when EMPTY_BUFF_2 =>
            
            next_state <= OUT_AM_BYTES;
            action <= "011";
             
        when OUT_AM_BYTES =>
            
                           
            action <= "100";
            next_state <= OUT_STATE;
            
        when OUT_STATE =>
        
            action <= "111";
           
            next_state <= IDLE;
            
                
        end case;   
    end process;
    
end encode;
