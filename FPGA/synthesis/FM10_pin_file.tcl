# -------------------------------------------------------------------------- #
#
# This file is for pin assignments only
#
# -------------------------------------------------------------------------- #

set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
set_location_assignment PIN_27 -to clock_50Mhz

# D30 connectors (up and down)
set_location_assignment PIN_6 -to b27
set_location_assignment PIN_7 -to b29
set_location_assignment PIN_8 -to b18
set_location_assignment PIN_10 -to b20
set_location_assignment PIN_11 -to b26
set_location_assignment PIN_12 -to b30
set_location_assignment PIN_13 -to b28
set_location_assignment PIN_14 -to b24
set_location_assignment PIN_17 -to t29
set_location_assignment PIN_21 -to t27
set_location_assignment PIN_22 -to t20
set_location_assignment PIN_24 -to tb19
set_location_assignment PIN_25 -to tb17
set_location_assignment PIN_26 -to t18
set_location_assignment PIN_28 -to CAN_SHDN
set_location_assignment PIN_29 -to t30
set_location_assignment PIN_30 -to t28
set_location_assignment PIN_32 -to t26
set_location_assignment PIN_33 -to t24
set_location_assignment PIN_121 -to RST_N
set_location_assignment PIN_122 -to tb8
set_location_assignment PIN_123 -to b14
set_location_assignment PIN_130 -to t14
set_location_assignment PIN_131 -to CAN_TXD
set_location_assignment PIN_132 -to CAN_RXD
set_location_assignment PIN_134 -to t16_LED0
set_location_assignment PIN_135 -to tb9
set_location_assignment PIN_140 -to tb11
set_location_assignment PIN_141 -to b16

# SRAM

# FFC connector
set_location_assignment PIN_79 -to FFC1
set_location_assignment PIN_80 -to FFC2
set_location_assignment PIN_84 -to FFC3
set_location_assignment PIN_85 -to FFC4
set_location_assignment PIN_86 -to FFC5
set_location_assignment PIN_87 -to FFC6
set_location_assignment PIN_88 -to FFC7
set_location_assignment PIN_89 -to FFC8
set_location_assignment PIN_90 -to FFC9
set_location_assignment PIN_91 -to FFC10
set_location_assignment PIN_96 -to FFC15
set_location_assignment PIN_97 -to FFC16
set_location_assignment PIN_98 -to FFC17
set_location_assignment PIN_99 -to FFC18
set_location_assignment PIN_100 -to FFC19
set_location_assignment PIN_101 -to FFC20
set_location_assignment PIN_102 -to FFC21
set_location_assignment PIN_105 -to FFC22
set_location_assignment PIN_106 -to FFC23
set_location_assignment PIN_110 -to FFC24

# FTDI USB connector
set_location_assignment PIN_124 -to USB_UART_TX
set_location_assignment PIN_120 -to USB_UART_RX


 
