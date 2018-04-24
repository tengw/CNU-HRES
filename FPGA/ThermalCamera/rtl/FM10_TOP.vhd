
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
	 
	 -- IMU I2C interface: 
    IMU_I2C_SDA  : inout std_logic; --tb9
    IMU_I2C_SCL : inout std_logic;  --tb11
	 -- IMU_INT, Connected to MCU's PIN #48: PB2
    
	 tb17 : inout std_logic; 
    tb19 : inout std_logic; 

    --t14  : inout std_logic; = USB_NSS
    t16_LED0:inout std_logic;
    --t18  : inout std_logic; = USB_MOSI[3]
    --t20  : inout std_logic; = USB_MOSI[1]
    --t24  : inout std_logic; = USB_SCLK
    --t26  : inout std_logic; = USB_MOSI[0]
    --t27  : inout std_logic; = TCAM_UART_RX
    --t28  : inout std_logic; = USB_MOSI[2]
    --t29  : inout std_logic; = TCAM_UART_TX
    --t30  : inout std_logic; = USB_MISO

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
	 
	 -- USB connector on mother board:
	 -- 4-bit SPI to USB 2.0
	 USB_MOSI : out std_logic_vector (3 downto 0);
	 USB_MISO : in  std_logic;
	 USB_NSS  : out std_logic;
	 USB_SCLK : out std_logic;
	 
	 
    -- FTDI USB-UART Connector
    USB_UART_TX : out std_logic;
    USB_UART_RX : in  std_logic;
	 

    -- 24-pin FFC connector
    TCAM_CLK   : in std_logic;
    TCAM_VSYNC : in std_logic;
	 TCAM_HSYNC : in std_logic;
    TCAM_D     : in std_logic_vector (13 downto 0);
    TCAM_GPIO  : inout std_logic;  -- Camera PIN #25
	 TCAM_UART_RX : out std_logic;
	 TCAM_UART_TX : in std_logic;
    
    FFC3 : in std_logic;  --locked at LOW
    FFC7 : in std_logic;  --locked at LOW
	 
    -- CAN BUS
    CAN_SHDN : out std_logic;
    CAN_TXD  : out std_logic;
    CAN_RXD  : in  std_logic;

    -- SRAM Controller
    SRAM_A  : inout std_logic_vector (17 downto 0);
    SRAM_D  : inout std_logic_vector (15 downto 0);
    SRAM_CE_N  : out std_logic;
    SRAM_WE_N  : out std_logic;
    SRAM_LB_N  : out std_logic;
    SRAM_UB_N  : out std_logic;
    SRAM_OE_N  : out std_logic
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
