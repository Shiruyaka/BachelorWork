
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Compressor is
Port ( 
            clk : in STD_LOGIC;
            init : in STD_LOGIC;
            start : in STD_LOGIC;        
            
            --DDR for start
            DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
            DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
            DDR_cas_n : inout  STD_LOGIC;
            DDR_ck_n : inout STD_LOGIC;
            DDR_ck_p : inout STD_LOGIC;
            DDR_cke : inout STD_LOGIC;
            DDR_cs_n : inout STD_LOGIC;
            DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
            DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_odt : inout STD_LOGIC;
            DDR_ras_n : inout STD_LOGIC;
            DDR_reset_n : inout STD_LOGIC;
            DDR_we_n : inout STD_LOGIC;
            
            --FIXED_IO
            FIXED_IO_ddr_vrn : inout STD_LOGIC;
            FIXED_IO_ddr_vrp : inout STD_LOGIC;
            FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
            FIXED_IO_ps_clk : inout STD_LOGIC;
            FIXED_IO_ps_porb : inout STD_LOGIC;
            FIXED_IO_ps_srstb : inout STD_LOGIC         
);
end Compressor;

architecture compress of Compressor is

component Encoder
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
end component;

component Driver
Port ( 
        clk : in STD_LOGIC;
        init : in STD_LOGIC;
        start : in STD_LOGIC;
        reset_ram : OUT STD_LOGIC;
        
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
        state_for_encoder : out STD_LOGIC_VECTOR(15 downto 0);
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
        write_enable : out STD_LOGIC_VECTOR(3 downto 0)
        );
end component;

component Memory_design_wrapper is
  port (
  
    DATA_IN_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_clk : in STD_LOGIC;
    DATA_IN_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_en : in STD_LOGIC;
    DATA_IN_BRAM_rst : in STD_LOGIC;
    DATA_IN_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    
    DATA_OUT_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_clk : in STD_LOGIC;
    DATA_OUT_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_en : in STD_LOGIC;
    DATA_OUT_BRAM_rst : in STD_LOGIC;
    DATA_OUT_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    
    NB_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_clk : in STD_LOGIC;
    NB_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_en : in STD_LOGIC;
    NB_BRAM_rst : in STD_LOGIC;
    NB_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    
    START_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_clk : in STD_LOGIC;
    START_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_en : in STD_LOGIC;
    START_BRAM_rst : in STD_LOGIC;
    START_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    
    ENCODING_TABLE_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_clk : in STD_LOGIC;
    ENCODING_TABLE_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_en : in STD_LOGIC;
    ENCODING_TABLE_BRAM_rst : in STD_LOGIC;
    ENCODING_TABLE_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );

    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC

  );
end component;

    signal
    Start_Encoder, Data_Produced, New_Symbol, Roms_Enable, New_Data, Bram_Reset,
    EncodingRam_Enable, Start_Driver, Init_Middleware, Init_Encoder, Start_Nb_Enable, 
    Data_In_Enable, Out_Enable, State_Enable: STD_LOGIC := '0';
    
signal
    Data_In, Data_out, State_For_Encoder : STD_LOGIC_VECTOR(15 downto 0) := x"0000";

signal
    Amount_Bytes, Start_Nb_Address, State_Address, Symbol, Data_In_Address, 
    Data_Out_Address, Start_Address, Nb_Address, Nb_From_Ram,
    Start_In, Nb_In, Encoding_In, Start_From_Ram, State_From_Ram,
    Data_Out_To_Save, DATA_OUT_BRAM_dout, DATA_IN_BRAM_din  : STD_LOGIC_VECTOR(31 downto 0 ) := x"00000000";

signal
    NbBits : STD_LOGIC_VECTOR(7 downto 0) := x"00";
    
signal
    Write_Enable, DATA_IN_BRAM_we, NB_BRAM_we, START_BRAM_we, ENCODING_TABLE_BRAM_we : STD_LOGIC_VECTOR(3 downto 0);
    
type 
    state_type is (IDLE, GO_DRIVER, WAITING);

signal 
    current_state, next_state : state_type;

begin
           
enc: Encoder
 Port map(
        clk => clk,
        init => Init_Encoder,
        start => Start_Encoder,
        
        x => State_For_Encoder,
        nbBits => NbBits,
        stream => Data_out,
        amount_bytes => Amount_Bytes,
        produce_symbol => Data_Produced,
        new_symbol => New_symbol
 );

middle: Driver
 Port map(
     clk => clk,
     start => Start_Driver,
     init => Init_Middleware,
     init_encoder => Init_Encoder,
     
     start_nb_enable => Start_Nb_Enable,
     amount_bytes => Amount_Bytes,
     data_in_enable => Data_In_Enable,
     start_encoder => Start_Encoder,
     start_address => Start_Address,
     nb_address => Nb_Address,
     nb_from_ram => Nb_From_Ram,
     state_address => State_Address,
     start_from_ram => Start_From_Ram,
     state_from_ram => State_From_Ram,
     state_enable => State_Enable,
     new_data => New_Data,      
     data_in => Symbol,
     data_in_address => Data_In_Address,
     
     data_produced => Data_Produced,
     data_out_from_encoder => Data_Out,
     data_out_to_save => Data_Out_To_Save,
     data_out_address => Data_Out_Address,
     
     state_for_encoder => State_For_Encoder,
     nbBits_for_encoder => NbBits,
     reset_ram => Bram_Reset,
     out_enable => Out_Enable,
     write_enable => Write_Enable
    );

memory: Memory_design_wrapper
Port map(  

    DATA_IN_BRAM_addr => Data_In_Address,
    DATA_IN_BRAM_clk => clk,
    DATA_IN_BRAM_din => DATA_IN_BRAM_din,
    DATA_IN_BRAM_dout => Symbol,
    DATA_IN_BRAM_en => Data_In_Enable,
    DATA_IN_BRAM_rst => Bram_Reset,
    DATA_IN_BRAM_we =>DATA_IN_BRAM_we,
    
    DATA_OUT_BRAM_addr => Data_Out_Address,
    DATA_OUT_BRAM_clk => clk,
    DATA_OUT_BRAM_din  => Data_Out_To_Save,
    DATA_OUT_BRAM_dout => DATA_OUT_BRAM_dout,
    DATA_OUT_BRAM_en  => Out_Enable,
    DATA_OUT_BRAM_rst  => Bram_Reset,
    DATA_OUT_BRAM_we => Write_Enable,
 
    NB_BRAM_addr => Nb_Address,
    NB_BRAM_clk => clk,
    NB_BRAM_din => Nb_In,
    NB_BRAM_dout => Nb_From_Ram,
    NB_BRAM_en => Start_Nb_Enable,
    NB_BRAM_rst => Bram_Reset,
    NB_BRAM_we => NB_BRAM_we,
      
    START_BRAM_addr  => Start_Address,
    START_BRAM_clk  => clk,
    START_BRAM_din => Start_In,
    START_BRAM_dout => Start_From_Ram,
    START_BRAM_en=> Start_Nb_Enable,
    START_BRAM_rst => Bram_Reset,
    START_BRAM_we => START_BRAM_we,

    ENCODING_TABLE_BRAM_addr => State_Address,
    ENCODING_TABLE_BRAM_clk => clk,
    ENCODING_TABLE_BRAM_din => Encoding_In,
    ENCODING_TABLE_BRAM_dout => State_From_Ram,
    ENCODING_TABLE_BRAM_en => State_Enable,
    ENCODING_TABLE_BRAM_rst => Bram_Reset,
    ENCODING_TABLE_BRAM_we => ENCODING_TABLE_BRAM_we,

    DDR_addr => DDR_addr,
    DDR_ba => DDR_ba,
    DDR_cas_n => DDR_cas_n,
    DDR_ck_n => DDR_ck_n,
    DDR_ck_p => DDR_ck_p,
    DDR_cke => DDR_cke,
    DDR_cs_n => DDR_cs_n,
    DDR_dm => DDR_dm,
    DDR_dq => DDR_dq,
    DDR_dqs_n => DDR_dqs_n,
    DDR_dqs_p => DDR_dqs_p,
    DDR_odt => DDR_odt,
    DDR_ras_n => DDR_ras_n,
    DDR_reset_n => DDR_reset_n,
    DDR_we_n => DDR_we_n,
    
    FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
    FIXED_IO_mio => FIXED_IO_mio,
    FIXED_IO_ps_clk => FIXED_IO_ps_clk,
    FIXED_IO_ps_porb => FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb => FIXED_IO_ps_srstb 
  );



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
  
  main_process: process(clk, current_state, start)
  begin
      next_state <= current_state;
      
      case current_state is
         when IDLE =>
       
           Init_Middleware <= '1';
           DATA_IN_BRAM_we <= x"0";
           NB_BRAM_we <= x"0";
           START_BRAM_we <= x"0";
           ENCODING_TABLE_BRAM_we <= x"0";
           
           if(start = '1')then
              next_state <= GO_DRIVER;
           end if;
         
          when GO_DRIVER =>
              
              Init_Middleware <= '0';
              Start_Driver <= '1';
              next_state <= WAITING;
              
         when WAITING =>
              
              Start_Driver <= '0';
              next_state <= WAITING;
              
      end case;
      
  end process; 
  
  end compress;
