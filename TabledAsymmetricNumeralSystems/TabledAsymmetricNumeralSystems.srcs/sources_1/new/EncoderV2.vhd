library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EncoderV2 is
    Port(
            clk : in STD_LOGIC;
            
            init : in STD_LOGIC;
            start : in STD_LOGIC;
            
            new_symbol : in STD_LOGIC;
            
            produce_symbol : out STD_LOGIC;
            
            amount_bytes : in STD_LOGIC_VECTOR(31 downto 0);
            state : in STD_LOGIC_VECTOR(15 downto 0);
            nb_bits : in STD_LOGIC_VECTOR(7 downto 0); 
            
            out_byte : out STD_LOGIC_VECTOR(15 downto 0) -- zmniejszyc do 8? stan mozna w enkoderze zalozyc ze jest 16 i brac dwa 
        );

end EncoderV2;

architecture encode of EncoderV2 is

type state_type is ( IDLE, GET_SYMBOL, ENCODING, EMPTY_BUFF );
signal current_state, next_state : state_type;

signal nb_bits_int, state_int, buffor_fill : INTEGER;

signal send, delete_byte, save_to_buffor, empty : STD_LOGIC;
signal buffor_task: STD_LOGIC_VECTOR(2 downto 0);
signal encoded_symbol : STD_LOGIC_VECTOR(7 downto 0);
signal buffor : STD_LOGIC_VECTOR(31 downto 0);

begin

    state_shift: process(clk)
    begin
     if(rising_edge(clk)) then
        if(init = '1')then
            current_state <= IDLE;
        else
            current_state <= next_state;
        end if;
      end if;
    end process;

    finite_state_machine: process(current_state, start, new_symbol)
    begin
        next_state <= current_state;
        
        case current_state is
        
            when IDLE =>
            
                if(start = '1') then
                    next_state <= GET_SYMBOL;
                end if;
                
            when GET_SYMBOL =>
                
                if(new_symbol = '1') then
                    next_state <= ENCODING;
                elsif(empty = '1') then
                    next_state <= EMPTY_BUFF;
                end if;
                end if;
                
            when ENCODING =>
                
                next_state <= GET_SYMBOL;
                
        end case;
        
    end process;
    
    parse_arguments: process(clk, new_symbol)
    variable counter: integer := 0;
    begin
        if(rising_edge(clk)) then
            if(new_symbol = '1') then
            
                counter := counter + 1;
                empty <= '0';
                
                nb_bits_int <= to_integer(unsigned(nb_bits));
                state_int <= to_integer(unsigned(state));
            else
                nb_bits_int <= nb_bits_int;
                state_int <= state_int;
                
                if(counter = unsigned(amount_bytes))then
                    empty <= '1';
                    counter := 0;
                end if;
            end if;
        end if;
        
    end process;
    
    encode_symbol: process(clk, current_state)
    begin
        if(rising_edge(clk)) then
            
            buffor_task <= "111";
            
            if(current_state = ENCODING) then              
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
                    when others => 
                        encoded_symbol <= x"00";  
                      
                end case;
                
                if(buffor_fill + nb_bits_int >= 8) then
                    send <= '1';
                else
                    save_to_buffor <= '1';
                end if;
            else
                send <= '0';
                save_to_buffor <= '0';
            end if;
        end if;
    end process;
    
    send_byte: process(clk, send)
    begin
    
        if(rising_edge(clk))then
            if(send = '1') then
            
                case buffor_fill is
                
                    when 1 =>
                        out_byte <= (0 to 7 => '0') & encoded_symbol(1 to 7) & buffor(31 to 31);
                    when 2 =>
                        out_byte <= (0 to 7 => '0') & encoded_symbol(2 to 7) & buffor(30 to 31);
                    when 3 =>
                        out_byte <= (0 to 7 => '0') & encoded_symbol(3 to 7) & buffor(29 to 31);
                    when 4 =>
                        out_byte <= (0 to 7 => '0') & encoded_symbol(4 to 7) & buffor(28 to 31);
                    when 5 =>
                        out_byte <= (0 to 7 => '0') & encoded_symbol(5 to 7) & buffor(27 to 31);
                    when 6 =>
                        out_byte <= (0 to 7 => '0') & encoded_symbol(6 to 7) & buffor(26 to 31);
                    when 7 =>
                        out_byte <= (0 to 7 => '0') & encoded_symbol(7 to 7) & buffor(25 to 31);
                    when others => 
                        out_byte <= x"00";
                    
                end case;
            
                produce_symbol <= '1';
                delete_byte <= '1';
                
            else
                delete_byte <= '0';            
            end if;
        end if;
    end process;
    
    manage_buffor: process(clk) 
    begin
        if(rising_edge(clk)) then
            if(save_to_buffor = '1') then
            
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
                buffor_fill <= buffor_fill + nb_bits_int;
               
            elsif(delete_byte = '1') then
                
                case buffor_fill is
                    when 7 => 
                        case nb_bits_int is
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
                        case nb_bits_int is
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
                       case nb_bits_int is
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
                        case nb_bits_int is
                            when 5 =>
                                buffor <= (0 to 30 => '0') & encoded_symbol(3 to 3);
                            when 6 =>
                                buffor <= (0 to 29 => '0') & encoded_symbol(2 to 3);
                            when 7 =>
                                buffor <= (0 to 28 => '0') & encoded_symbol(1 to 3);
                            when others => buffor <= (0 to 31 => '0');
                        end case;
                        
                    when 3 =>
                        case nb_bits_int is
                            when 6 => 
                                buffor <= (0 to 30 => '0') & encoded_symbol(2 to 2);
                            when 7 =>
                                buffor <= (0 to 29 => '0') & encoded_symbol(1 to 2);
                            when others => buffor <= (0 to 31 => '0');
                        end case;
                        
                    when 2 => 
                        case nb_bits_int is
                            when 7 =>
                                buffor <= (0 to 30 => '0') & encoded_symbol(1 to 1);
                            when others => buffor <= (0 to 31 => '0');
                        end case;
                    
                    when others => 
                        buffor <= (0 to 31 => '0');
                end case;       
                buffor_fill <= nb_bits_int - 8 + buffor_fill;
                
            elsif(empty = '1') then
            
            end if;
        end if;
    end process;
end encode;
