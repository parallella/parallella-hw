EESchema Schematic File Version 2
LIBS:adapteva_kicad
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:porcupine-cache
EELAYER 24 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 10
Title "Parallella Breakout Daughtercard"
Date "09 May 2014"
Rev "*"
Comp "Adapteva, Inc., 1666 Massachusetts Ave., Lexington, MA, 02420"
Comment1 "Porcupin Top Level"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8900 3200 0    150  ~ 0
POWER
$Comp
L GND #PWR01
U 1 1 53864BC9
P 8450 6850
F 0 "#PWR01" H 8450 6850 30  0001 C CNN
F 1 "GND" H 8450 6780 30  0001 C CNN
F 2 "" H 8450 6850 60  0000 C CNN
F 3 "" H 8450 6850 60  0000 C CNN
	1    8450 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 53864BDD
P 9850 6850
F 0 "#PWR02" H 9850 6850 30  0001 C CNN
F 1 "GND" H 9850 6780 30  0001 C CNN
F 2 "" H 9850 6850 60  0000 C CNN
F 3 "" H 9850 6850 60  0000 C CNN
	1    9850 6850
	1    0    0    -1  
$EndComp
Text HLabel 7750 3700 0    60   BiDi ~ 0
I2C_SDA
Text HLabel 10550 3700 2    60   BiDi ~ 0
I2C_SCL
Text Label 7850 3800 0    60   ~ 0
REG_EN2
Text Label 7850 3900 0    60   ~ 0
REG_EN4
Text Label 10100 3800 0    60   ~ 0
REG_EN1
Text Label 10100 3900 0    60   ~ 0
REG_EN3
Text Label 6500 4650 2    60   ~ 0
REG_EN[1..4]
Text HLabel 5850 4650 0    60   Input ~ 0
REG_EN[1..4]
NoConn ~ 8650 4000
Text HLabel 10550 4000 2    60   BiDi ~ 0
PROG_IO
Text Label 7850 4200 0    60   ~ 0
DSP_YID0
Text Label 7850 4300 0    60   ~ 0
DSP_YID1
Text Label 7850 4400 0    60   ~ 0
DSP_YID2
Text Label 7850 4500 0    60   ~ 0
DSP_YID3
Text Label 10050 4200 0    60   ~ 0
DSP_XID0
Text Label 10050 4300 0    60   ~ 0
DSP_XID1
Text Label 10050 4400 0    60   ~ 0
DSP_XID2
Text Label 10050 4500 0    60   ~ 0
DSP_XID3
Wire Wire Line
	8450 4100 8450 6850
Wire Wire Line
	8450 4100 8650 4100
Wire Wire Line
	8650 4600 8450 4600
Connection ~ 8450 4600
Wire Wire Line
	8650 5100 8450 5100
Connection ~ 8450 5100
Wire Wire Line
	8650 5300 8450 5300
Connection ~ 8450 5300
Wire Wire Line
	8650 5600 8450 5600
Connection ~ 8450 5600
Wire Wire Line
	8650 6100 8450 6100
Connection ~ 8450 6100
Wire Wire Line
	9850 4100 9850 6850
Wire Wire Line
	9850 4100 9650 4100
Wire Wire Line
	9650 4600 9850 4600
Connection ~ 9850 4600
Wire Wire Line
	9650 5100 9850 5100
Connection ~ 9850 5100
Wire Wire Line
	9650 5300 9850 5300
Connection ~ 9850 5300
Wire Wire Line
	9650 5600 9850 5600
Connection ~ 9850 5600
Wire Wire Line
	9650 6100 9850 6100
Connection ~ 9850 6100
Wire Wire Line
	8650 3700 7750 3700
Wire Wire Line
	9650 3700 10550 3700
Wire Wire Line
	8650 3600 8450 3600
Wire Wire Line
	8450 3600 8450 3250
Wire Wire Line
	9650 3600 9850 3600
Wire Wire Line
	9850 3600 9850 3250
Connection ~ 8450 3250
Wire Wire Line
	9650 3800 10550 3800
Wire Wire Line
	8650 3800 7750 3800
Wire Wire Line
	8650 3900 7750 3900
Wire Wire Line
	8650 4200 7750 4200
Wire Wire Line
	8650 4300 7750 4300
Wire Wire Line
	8650 4400 7750 4400
Wire Wire Line
	8650 4500 7750 4500
Wire Wire Line
	8650 4700 7750 4700
Wire Wire Line
	8650 4800 7750 4800
Wire Wire Line
	8650 4900 7750 4900
Wire Wire Line
	8650 5000 7750 5000
Wire Wire Line
	8650 5200 7750 5200
Wire Wire Line
	9650 3900 10550 3900
Wire Wire Line
	9650 4000 10550 4000
Wire Wire Line
	9650 4200 10550 4200
Wire Wire Line
	9650 4300 10550 4300
Wire Wire Line
	9650 4400 10550 4400
Wire Wire Line
	9650 4500 10550 4500
Wire Wire Line
	9650 4700 10550 4700
Wire Wire Line
	9650 4800 10550 4800
Wire Wire Line
	9650 4900 10550 4900
Wire Wire Line
	9650 5000 10550 5000
Wire Wire Line
	9650 5200 10550 5200
Wire Wire Line
	9650 5400 10550 5400
Wire Wire Line
	9650 5500 10550 5500
Wire Wire Line
	9650 5700 10550 5700
Wire Wire Line
	9650 5800 10550 5800
Wire Wire Line
	9650 5900 10550 5900
Wire Wire Line
	9650 6000 10550 6000
Wire Wire Line
	9650 6200 10550 6200
Wire Wire Line
	9650 6300 10550 6300
Wire Wire Line
	9650 6400 10550 6400
Wire Wire Line
	9650 6500 10550 6500
Wire Wire Line
	8650 5400 7750 5400
Wire Wire Line
	8650 5500 7750 5500
Wire Wire Line
	8650 5700 7750 5700
Wire Wire Line
	8650 5800 7750 5800
Wire Wire Line
	8650 5900 7750 5900
Wire Wire Line
	8650 6000 7750 6000
Wire Wire Line
	8650 6200 7750 6200
Wire Wire Line
	7750 6300 8650 6300
Wire Wire Line
	8650 6400 7750 6400
Wire Wire Line
	8650 6500 7750 6500
Wire Bus Line
	6550 4650 5850 4650
Wire Bus Line
	5850 4850 6550 4850
Wire Bus Line
	5850 5050 6550 5050
Text Label 5900 4850 0    60   ~ 0
DSP_YID[0..3]
Text Label 5900 5050 0    60   ~ 0
DSP_XID[0..3]
Text HLabel 5850 4850 0    60   Input ~ 0
DSP_YID[0..3]
Text HLabel 5850 5050 0    60   Input ~ 0
DSP_XID[0..3]
Text HLabel 7750 4700 0    60   Input ~ 0
UART_RX
Text HLabel 7750 4800 0    60   Output ~ 0
UART_TX
Text HLabel 7750 4900 0    60   Output ~ 0
USER_LED
Text HLabel 7750 5000 0    60   BiDi ~ 0
RESET_N
Text HLabel 7750 5200 0    60   Input ~ 0
VADC_P
Text HLabel 7750 5400 0    60   Input ~ 0
JTAG_TDI
Text HLabel 7750 5500 0    60   Output ~ 0
JTAG_TDO
Text HLabel 10550 4700 2    60   Output ~ 0
DSP_FLAG
Text HLabel 10550 4800 2    60   Output ~ 0
TURBO_MODE
Text HLabel 10550 4900 2    60   Output ~ 0
SPDIF
Text HLabel 10550 5000 2    60   Input ~ 0
JTAG_BOOT_EN
Text HLabel 10550 5200 2    60   Input ~ 0
VADC_N
Text HLabel 10550 5400 2    60   Input ~ 0
JTAG_TMS
Text HLabel 10550 5500 2    60   Input ~ 0
JTAG_TCK
Text Label 7850 5700 0    60   ~ 0
1P0V
Text Label 10450 5700 2    60   ~ 0
1P0V
Text Label 7850 5800 0    60   ~ 0
VDD_DSP
Text Label 10450 5800 2    60   ~ 0
VDD_DSP
Text Label 7850 5900 0    60   ~ 0
1P35V
Text Label 10450 5900 2    60   ~ 0
1P35V
Text Label 7850 6000 0    60   ~ 0
1P8V
Text Label 10450 6000 2    60   ~ 0
1P8V
Text Label 7850 6200 0    60   ~ 0
VDD_ADJ
Text Label 7850 6300 0    60   ~ 0
VDD_GPIO
Text Label 7850 6400 0    60   ~ 0
2P5V
Text Label 7850 6500 0    60   ~ 0
3P3V
Text Label 10450 6200 2    60   ~ 0
VDD_ADJ
Text Label 10450 6300 2    60   ~ 0
VDD_GPIO
Text Label 10450 6400 2    60   ~ 0
2P5V
Text Label 10450 6500 2    60   ~ 0
3P3V
Text HLabel 7750 5700 0    60   Input ~ 0
1P0V
Text HLabel 7750 5800 0    60   Input ~ 0
VDD_DSP
Text HLabel 7750 5900 0    60   Input ~ 0
1P35V
Text HLabel 7750 6000 0    60   Input ~ 0
1P8V
Text HLabel 7750 6200 0    60   Input ~ 0
VDD_ADJ
Text HLabel 7750 6300 0    60   Input ~ 0
VDD_GPIO
Text HLabel 7750 6400 0    60   Input ~ 0
2P5V
Text HLabel 7750 6500 0    60   Input ~ 0
3P3V
Text HLabel 8250 3250 0    60   Output ~ 0
SYS_5P0V
Wire Wire Line
	9850 3250 8250 3250
$Comp
L CONN\SAMTEC\BTH\60 P3
U 1 1 538934D7
P 9150 5050
F 0 "P3" H 9150 6750 60  0000 C CNN
F 1 "CONN\\SAMTEC\\BTH\\60" V 9050 5050 60  0000 C CNN
F 2 "CONN_SAMTEC_BTH_60" V 9250 5050 60  0001 C CNN
F 3 "" H 9250 5950 60  0001 C CNN
F 4 "BTH-030-01-F-D-A" V 9150 5050 80  0000 C CNN "MFRPN"
F 5 "Samtec" V 9150 3850 60  0000 C CNN "Manufacturer"
	1    9150 5050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
