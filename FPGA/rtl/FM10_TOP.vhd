
--========================================================================--
--  Project         : CNU-HRES
--  Description     :
--  Prerequisites   : ioNeurons-FM10 
--  Reference       : None
--  Authors         :
--                  : Teng Wang (teng@sentto.com)
--  Version         : 0.1, April 10, 2018
--
--========================================================================--

Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--use ieee.fixed_pkg.all;
--use ieee.math_real.all;

----------------------------------------------------------------------------

ENTITY FM10_TOP is port(



-- 30-Pin GPIO with P5KS connectors (top and bottom of the PCB)    --
-- Top Pin Number, Bottom Pin Number: Type      : Signal Name      --
---------------------------------------------------------------------
-- t1 ,b1  : Power        : 5V DC
-- t2 ,b2  : Bidrectional : CAN_L
-- t3 ,b3  : Power        : 5V DC
-- t4 ,b4  : Bidrectional : CAN_H
-- t5 ,b5  : Power        : GND
-- t6 ,b6  : Input        : RST_N
-- t7 ,b7  : Power        : GND
-- t8 ,b8  : Bidrectional : tb8
-- t9 ,b9  : Bidrectional : tb9
-- t10,b10 : open         : reserved
-- t11,b11 : Bidrectional : tb11
-- t12,b12 : open         : reserved
-- t13,b13 : connected    : signal pass
-- t15,b15 : connected    : signal pass
-- t16     : Bidrectional : t16_LED0
-- t17,b17 : Bidrectional : tb17
-- t19,b19 : Bidrectional : tb19
-- t21,b21 : open         : reserved
-- t22,b22 : open         : reserved
-- t23,b23 : connected    : signal pass
-- t25,b25 : connected    : signal pass
	 
    clock_50Mhz: in std_logic;
    RST_N : in std_logic;

    tb8  : inout std_logic;
    tb9  : inout std_logic;
    tb11 : inout std_logic;
    tb17 : inout std_logic; -- IMU_I2C_SCL
    tb19 : inout std_logic; -- IMU_I2C_SDA

    t14  : inout std_logic;
    t16_LED0:inout std_logic;
    t18  : inout std_logic;
    t20  : inout std_logic;
    t24  : inout std_logic;
    t26  : inout std_logic;
    t27  : inout std_logic;
    t28  : inout std_logic;
    t29  : inout std_logic;
    t30  : inout std_logic;

    b14  : inout std_logic;
    b16  : inout std_logic;
    b18  : inout std_logic;
    b20  : inout std_logic;
    b24  : inout std_logic;
    b26  : inout std_logic;
    b27  : inout std_logic;
    b28  : inout std_logic;
    b29  : inout std_logic;
    b30  : inout std_logic;
	 
    -- FTDI USB-UART Connector
    USB_UART_TX : out std_logic;
    USB_UART_RX : in  std_logic;

    -- 24-pin FFC connector
    FFC1 : inout std_logic;
    FFC2 : inout std_logic;
    FFC3 : inout std_logic;
    FFC4 : inout std_logic;
    FFC5 : inout std_logic;
    FFC6 : inout std_logic;
    FFC7 : inout std_logic;
    FFC8 : inout std_logic;
    FFC9 : inout std_logic;
    FFC10: inout std_logic;
    --FFC11: 3.3V DC
    --FFC12: 3.3v DC
    --FFC13: GND
    --FFC14: GND
    FFC15 : inout std_logic;
    FFC16 : inout std_logic;
    FFC17 : inout std_logic;
    FFC18 : inout std_logic;
    FFC19 : inout std_logic;
    FFC20 : inout std_logic;
    FFC21 : inout std_logic;
    FFC22 : inout std_logic;
    FFC23 : inout std_logic;
    FFC24 : inout std_logic;
	 
    -- CAN BUS
    CAN_SHDN : out std_logic;
    CAN_TXD  : out std_logic;
    CAN_RXD  : in  std_logic

    -- SRAM Controller
    SRAM_A  : inout std_logic_vector (17 downto 0);
    SRAM_D  : inout std_logic_vector (15 downto 0);
    SRAM_CE_N  : out std_logic;
    SRAM_WE_N  : out std_logic;
    SRAM_LB_N  : out std_logic;
    SRAM_UB_N  : out std_logic;
    SRAM_OE_N  : out std_logic;
);
END FM10_TOP;

ARCHITECTURE rtl OF FM10_TOP IS

-----------------------------------------------------------------------------------------
-- Selection of the architecture for the components
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- Signals/variable type declarations
-----------------------------------------------------------------------------------------
-- e.g.
--signal SPI1_NSS :std_logic := '0';
--signal SPI1_SCK :std_logic := '0';
--signal SPI1_MISO:std_logic := '0';
--signal SPI1_MOSI:std_logic := '0';


signal counter : integer := 0;


BEGIN
-- connect signals to the entity pins


-- anything can be modified after this line   ------------------------------------------

process (clock_50Mhz)
begin
--    if (clock_50Mhz = '1' AND clock_50Mhz'event) then
--	     if (counter <20000000) then 
--		      counter <= counter + 1;
--				t16_LED0 <= '1';
--				t18 <= '1';
--		  elsif (counter <50000000) then
--		      counter <= counter + 1;
--				t16_LED0 <= '0';
--				t18 <= '0';
--		  else
--		      counter <= 0;
--        end if;
--    end if;

    if (clock_50Mhz = '1' AND clock_50Mhz'event) then
	     if (b18 = '1') then
				t16_LED0 <= '0';
		  else
		      t16_LED0 <= '1';
        end if;
    end if;
	 
	 
end process;



END rtl;
