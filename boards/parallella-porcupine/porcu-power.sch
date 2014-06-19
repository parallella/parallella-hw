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
Sheet 7 10
Title "Parallella Breakout Daughtercard"
Date "19 Jun 2014"
Rev "*"
Comp "Adapteva, Inc., 1666 Massachusetts Ave., Lexington, MA, 02420"
Comment1 "including JTAG"
Comment2 "Various Power connectors and Jumpers"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6900 3650 2    60   BiDi ~ 0
I2C_SDA
Text Label 11050 4250 0    60   ~ 0
REG_EN2
Text Label 11050 4050 0    60   ~ 0
REG_EN4
Text Label 10800 4550 2    60   ~ 0
REG_EN[1..4]
Text HLabel 10150 4550 0    60   Output ~ 0
REG_EN[1..4]
Text Label 6800 4550 2    60   ~ 0
DSP_YID0
Text Label 6800 4450 2    60   ~ 0
DSP_YID1
Text Label 6800 4350 2    60   ~ 0
DSP_YID2
Text Label 6800 4250 2    60   ~ 0
DSP_YID3
Text Label 7750 4150 2    60   ~ 0
DSP_YID[0..3]
Text Label 4150 4150 0    60   ~ 0
DSP_XID[0..3]
Text HLabel 7800 4150 2    60   Output ~ 0
DSP_YID[0..3]
Text HLabel 4100 4150 0    60   Output ~ 0
DSP_XID[0..3]
Text HLabel 5000 3750 0    60   Output ~ 0
UART_RX
Text HLabel 5000 3650 0    60   Input ~ 0
UART_TX
Text HLabel 6900 3450 2    60   Input ~ 0
USER_LED
Text HLabel 6900 3350 2    60   BiDi ~ 0
RESET_N
Text HLabel 6500 3150 2    60   Output ~ 0
VADC_P
Text HLabel 6200 6450 2    60   Output ~ 0
JTAG_TDI
Text HLabel 6200 6350 2    60   Input ~ 0
JTAG_TDO
Text Label 11050 3850 0    60   ~ 0
1P0V
Text Label 11050 3750 0    60   ~ 0
VDD_DSP
Text Label 11050 3650 0    60   ~ 0
1P35V
Text Label 11050 3550 0    60   ~ 0
1P8V
Text Label 11050 3450 0    60   ~ 0
VDD_ADJ
Text Label 11050 3350 0    60   ~ 0
VDD_GPIO
Text Label 11050 3250 0    60   ~ 0
2P5V
Text Label 11050 3150 0    60   ~ 0
3P3V
Text HLabel 10950 3850 0    60   Output ~ 0
1P0V
Text HLabel 10950 3750 0    60   Output ~ 0
VDD_DSP
Text HLabel 10950 3650 0    60   Output ~ 0
1P35V
Text HLabel 10950 3550 0    60   Output ~ 0
1P8V
Text HLabel 10950 3450 0    60   Output ~ 0
VDD_ADJ
Text HLabel 10950 3350 0    60   Output ~ 0
VDD_GPIO
Text HLabel 10950 3250 0    60   Output ~ 0
2P5V
Text HLabel 10950 3150 0    60   Output ~ 0
3P3V
Text HLabel 11450 4550 0    60   Input ~ 0
SYS_5P0V
Text HLabel 6900 3750 2    60   BiDi ~ 0
I2C_SCL
Text Label 11050 4350 0    60   ~ 0
REG_EN1
Text Label 11050 4150 0    60   ~ 0
REG_EN3
Text HLabel 6900 3550 2    60   BiDi ~ 0
PROG_IO
Text Label 5050 4550 0    60   ~ 0
DSP_XID0
Text Label 5050 4450 0    60   ~ 0
DSP_XID1
Text Label 5050 4350 0    60   ~ 0
DSP_XID2
Text Label 5050 4250 0    60   ~ 0
DSP_XID3
Text HLabel 5000 3550 0    60   Input ~ 0
DSP_FLAG
Text HLabel 5000 3450 0    60   Input ~ 0
TURBO_MODE
Text HLabel 5000 3350 0    60   Input ~ 0
SPDIF
Text HLabel 7100 4000 2    60   Output ~ 0
JTAG_BOOT_EN
Text HLabel 5400 3150 0    60   Output ~ 0
VADC_N
Text HLabel 6200 6150 2    60   Output ~ 0
JTAG_TMS
Text HLabel 6200 6250 2    60   Output ~ 0
JTAG_TCK
NoConn ~ 5300 6050
$Comp
L GND #PWR012
U 1 1 538E9BA0
P 5150 6800
F 0 "#PWR012" H 5150 6800 30  0001 C CNN
F 1 "GND" H 5150 6730 30  0001 C CNN
F 2 "" H 5150 6800 60  0000 C CNN
F 3 "" H 5150 6800 60  0000 C CNN
	1    5150 6800
	1    0    0    -1  
$EndComp
Text Label 6100 6050 0    60   ~ 0
3P3V
NoConn ~ 5900 6550
NoConn ~ 5900 6650
Text Notes 2050 4400 0    60   ~ 0
On the Parallella, ID pins are either 1k to ground or\n4.75k to 1.8V.  The default address is Y:1000 X:0010.
Text Notes 9400 4350 0    60   ~ 0
Regulator Enables:\nEN4: 2P5V (FPGA LVDS)\nEN3: 3P3V (IO)\nEN2: 1P8V (General)\nEN1: 1P0V (Zynq)
Entry Wire Line
	7000 4150 6900 4250
Entry Wire Line
	7000 4250 6900 4350
Entry Wire Line
	7000 4350 6900 4450
Entry Wire Line
	7000 4450 6900 4550
Entry Wire Line
	4800 4150 4900 4250
Entry Wire Line
	4800 4250 4900 4350
Entry Wire Line
	4800 4350 4900 4450
Entry Wire Line
	4800 4450 4900 4550
$Comp
L GND #PWR013
U 1 1 538EAE9D
P 12550 4650
F 0 "#PWR013" H 12550 4650 30  0001 C CNN
F 1 "GND" H 12550 4580 30  0001 C CNN
F 2 "" H 12550 4650 60  0000 C CNN
F 3 "" H 12550 4650 60  0000 C CNN
	1    12550 4650
	1    0    0    -1  
$EndComp
Entry Wire Line
	10850 4450 10950 4350
Entry Wire Line
	10850 4350 10950 4250
Entry Wire Line
	10850 4250 10950 4150
Entry Wire Line
	10850 4150 10950 4050
$Comp
L GND #PWR014
U 1 1 538EC9A1
P 5550 4850
F 0 "#PWR014" H 5550 4850 30  0001 C CNN
F 1 "GND" H 5550 4780 30  0001 C CNN
F 2 "" H 5550 4850 60  0000 C CNN
F 3 "" H 5550 4850 60  0000 C CNN
	1    5550 4850
	1    0    0    -1  
$EndComp
Text Label 6850 3950 2    60   ~ 0
SYS_5P0V
$Comp
L GND #PWR015
U 1 1 538EC9B8
P 6350 4850
F 0 "#PWR015" H 6350 4850 30  0001 C CNN
F 1 "GND" H 6350 4780 30  0001 C CNN
F 2 "" H 6350 4850 60  0000 C CNN
F 3 "" H 6350 4850 60  0000 C CNN
	1    6350 4850
	-1   0    0    -1  
$EndComp
Text Notes 6050 6900 0    60   ~ 0
Standard \n2mm Xilinx \nPinout
$Comp
L GND #PWR016
U 1 1 538FBBE6
P 12550 6000
F 0 "#PWR016" H 12550 6000 30  0001 C CNN
F 1 "GND" H 12550 5930 30  0001 C CNN
F 2 "" H 12550 6000 60  0000 C CNN
F 3 "" H 12550 6000 60  0000 C CNN
	1    12550 6000
	1    0    0    -1  
$EndComp
Text HLabel 11600 5900 0    60   Input ~ 0
MH_SYSPWR
$Comp
L CONN\HDR\2MM\2R07\SHD J1
U 1 1 538F757F
P 5600 6350
F 0 "J1" H 5250 6800 60  0000 C CNN
F 1 "CONN\\HDR\\2MM\\2R07\\SHD" H 5600 7100 60  0001 C CNN
F 2 "CONN_HDR_2MM_2R07_SHD" H 5600 6900 60  0000 C CNN
F 3 "" H 5600 6850 60  0001 C CNN
F 4 "0878311420" H 5600 6800 50  0000 C CNN "MFRPN"
F 5 "Molex" H 5600 7000 50  0001 C CNN "Manufacturer"
	1    5600 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN\HDR\P1\1R02 J4
U 1 1 538F75C3
P 12150 5900
F 0 "J4" H 11800 6050 60  0000 C CNN
F 1 "CONN\\HDR\\P1\\1R02" H 12150 6350 60  0001 C CNN
F 2 "CONN_HDR_P1_1R02" H 12150 6150 60  0000 C CNN
F 3 "" H 12150 6100 60  0001 C CNN
F 4 "961102-6404-AR" H 12300 6050 50  0000 C CNN "MFRPN"
F 5 "3M" H 12150 6250 50  0001 C CNN "Manufacturer"
	1    12150 5900
	1    0    0    -1  
$EndComp
$Comp
L CONN\HDR\P1\2R15 J3
U 1 1 5397BF9E
P 12150 3850
F 0 "J3" H 11800 4700 60  0000 C CNN
F 1 "CONN\\HDR\\P1\\2R15" H 12150 5000 60  0001 C CNN
F 2 "CONN_HDR_P1_2R15" H 12150 4800 60  0000 C CNN
F 3 "" H 12150 4750 60  0001 C CNN
F 4 "PRPC015DAAN-RC" H 12300 4700 50  0000 C CNN "MFRPN"
F 5 "Sullins" H 12150 4900 50  0001 C CNN "Manufacturer"
F 6 "DNI" H 12800 4550 60  0000 C CNN "DNI"
	1    12150 3850
	1    0    0    -1  
$EndComp
$Comp
L CONN\HDR\P1\2R15 J2
U 1 1 53A0EEAF
P 5950 3850
F 0 "J2" H 5600 4700 60  0000 C CNN
F 1 "CONN\\HDR\\P1\\2R15" H 5950 5000 60  0001 C CNN
F 2 "CONN_HDR_P1_2R15" H 5950 4800 60  0000 C CNN
F 3 "" H 5950 4750 60  0001 C CNN
F 4 "PRPC015DAAN-RC" H 6100 4700 50  0000 C CNN "MFRPN"
F 5 "Sullins" H 5950 4900 50  0001 C CNN "Manufacturer"
	1    5950 3850
	1    0    0    -1  
$EndComp
Text Label 5050 3950 0    60   ~ 0
3P3V
Text Label 5050 4150 0    60   ~ 0
1P8V
Text Label 6800 4050 2    60   ~ 0
VDD_GPIO
Text Label 5050 4050 0    60   ~ 0
VDD_ADJ
Wire Wire Line
	6250 3650 6900 3650
Wire Wire Line
	11850 4250 10950 4250
Wire Wire Line
	11850 4050 10950 4050
Wire Wire Line
	6250 4250 6900 4250
Wire Wire Line
	6250 4350 6900 4350
Wire Wire Line
	6250 4450 6900 4450
Wire Wire Line
	6250 4550 6900 4550
Wire Wire Line
	6250 3450 6900 3450
Wire Wire Line
	6250 3350 6900 3350
Wire Wire Line
	6250 3150 6500 3150
Wire Wire Line
	11850 3850 10950 3850
Wire Wire Line
	11850 3750 10950 3750
Wire Wire Line
	11850 3650 10950 3650
Wire Wire Line
	11850 3550 10950 3550
Wire Wire Line
	11850 3450 10950 3450
Wire Wire Line
	10950 3350 11850 3350
Wire Wire Line
	11850 3250 10950 3250
Wire Wire Line
	11850 3150 10950 3150
Wire Bus Line
	10850 4550 10150 4550
Wire Bus Line
	7800 4150 7000 4150
Wire Bus Line
	4100 4150 4800 4150
Wire Wire Line
	11450 4550 11850 4550
Wire Wire Line
	6900 3750 6250 3750
Wire Wire Line
	10950 4350 11850 4350
Wire Wire Line
	10950 4150 11850 4150
Wire Wire Line
	6250 3550 6900 3550
Wire Wire Line
	4900 4250 5650 4250
Wire Wire Line
	4900 4350 5650 4350
Wire Wire Line
	4900 4450 5650 4450
Wire Wire Line
	4900 4550 5650 4550
Wire Wire Line
	5650 3550 5000 3550
Wire Wire Line
	5650 3450 5000 3450
Wire Wire Line
	5650 3350 5000 3350
Wire Wire Line
	5650 3150 5400 3150
Wire Wire Line
	5300 6150 5150 6150
Wire Wire Line
	5150 6150 5150 6800
Wire Wire Line
	5300 6250 5150 6250
Connection ~ 5150 6250
Wire Wire Line
	5300 6350 5150 6350
Connection ~ 5150 6350
Wire Wire Line
	5300 6450 5150 6450
Connection ~ 5150 6450
Wire Wire Line
	5300 6550 5150 6550
Connection ~ 5150 6550
Wire Wire Line
	5300 6650 5150 6650
Connection ~ 5150 6650
Wire Wire Line
	5900 6050 6500 6050
Wire Wire Line
	6200 6150 5900 6150
Wire Wire Line
	5900 6250 6200 6250
Wire Wire Line
	6200 6350 5900 6350
Wire Wire Line
	5900 6450 6200 6450
Wire Bus Line
	7000 4150 7000 4450
Wire Bus Line
	4800 4150 4800 4450
Wire Wire Line
	12450 3150 12550 3150
Wire Wire Line
	12550 3150 12550 4650
Wire Wire Line
	12450 4550 12550 4550
Connection ~ 12550 4550
Wire Wire Line
	12450 4450 12550 4450
Connection ~ 12550 4450
Wire Wire Line
	12450 4350 12550 4350
Connection ~ 12550 4350
Wire Wire Line
	12450 4250 12550 4250
Connection ~ 12550 4250
Wire Wire Line
	12450 4150 12550 4150
Connection ~ 12550 4150
Wire Wire Line
	12450 4050 12550 4050
Connection ~ 12550 4050
Wire Wire Line
	12450 3950 12550 3950
Connection ~ 12550 3950
Wire Wire Line
	12450 3850 12550 3850
Connection ~ 12550 3850
Wire Wire Line
	12450 3750 12550 3750
Connection ~ 12550 3750
Wire Wire Line
	12450 3650 12550 3650
Connection ~ 12550 3650
Wire Wire Line
	12450 3550 12550 3550
Connection ~ 12550 3550
Wire Wire Line
	12450 3450 12550 3450
Connection ~ 12550 3450
Wire Wire Line
	12450 3350 12550 3350
Connection ~ 12550 3350
Wire Wire Line
	12450 3250 12550 3250
Connection ~ 12550 3250
Wire Wire Line
	11700 4550 11700 4450
Wire Wire Line
	11700 4450 11850 4450
Connection ~ 11700 4550
Wire Bus Line
	10850 4150 10850 4550
Wire Wire Line
	5550 3250 5550 4850
Wire Wire Line
	5650 3750 5000 3750
Wire Wire Line
	5650 3650 5000 3650
Wire Wire Line
	6350 3250 6350 4850
Wire Wire Line
	11600 5900 11850 5900
Wire Wire Line
	12450 5900 12550 5900
Wire Wire Line
	12550 5900 12550 6000
Wire Wire Line
	5650 4150 4950 4150
Wire Wire Line
	5550 3250 5650 3250
Wire Wire Line
	6250 3250 6350 3250
Wire Wire Line
	5650 4050 4950 4050
Wire Wire Line
	6250 4050 6850 4050
Wire Wire Line
	5550 3850 5650 3850
Connection ~ 5550 3850
Wire Wire Line
	6250 3850 6350 3850
Connection ~ 6350 3850
Wire Wire Line
	4950 3950 5650 3950
Wire Wire Line
	6950 3950 6250 3950
Wire Wire Line
	6250 4150 6950 4150
Wire Wire Line
	6950 4150 6950 4000
Wire Wire Line
	6950 4000 7100 4000
Text HLabel 10950 3950 0    60   BiDi ~ 0
SPARE
Wire Wire Line
	10950 3950 11850 3950
$EndSCHEMATC
