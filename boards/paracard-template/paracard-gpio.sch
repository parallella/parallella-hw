EESchema Schematic File Version 2
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
LIBS:adapteva_kicad
LIBS:paracard-template-cache
EELAYER 24 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 6
Title "Parallella Daughtercard"
Date "09 May 2014"
Rev "*"
Comp "Adapteva, Inc., 1666 Massachusetts Ave., Lexington, MA, 02420"
Comment1 "Parallella GPIO Connector"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 10300 7150 0    150  ~ 0
GPIO
Entry Wire Line
	9050 3800 9150 3900
Entry Wire Line
	9200 3700 9300 3800
Entry Wire Line
	9200 3900 9300 4000
$Comp
L GND #PWR01
U 1 1 5386382E
P 8850 6700
F 0 "#PWR01" H 8850 6700 30  0001 C CNN
F 1 "GND" H 8850 6630 30  0001 C CNN
F 2 "" H 8850 6700 60  0000 C CNN
F 3 "" H 8850 6700 60  0000 C CNN
	1    8850 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 538638A0
P 11950 6700
F 0 "#PWR02" H 11950 6700 30  0001 C CNN
F 1 "GND" H 11950 6630 30  0001 C CNN
F 2 "" H 11950 6700 60  0000 C CNN
F 3 "" H 11950 6700 60  0000 C CNN
	1    11950 6700
	1    0    0    -1  
$EndComp
Entry Wire Line
	9050 4000 9150 4100
Entry Wire Line
	9200 4200 9300 4300
Entry Wire Line
	9200 4400 9300 4500
Entry Wire Line
	9050 4300 9150 4400
Entry Wire Line
	9050 4500 9150 4600
Entry Wire Line
	9050 4800 9150 4900
Entry Wire Line
	9050 5000 9150 5100
Entry Wire Line
	9050 5300 9150 5400
Entry Wire Line
	9050 5500 9150 5600
Entry Wire Line
	9050 5800 9150 5900
Entry Wire Line
	9050 6000 9150 6100
Entry Wire Line
	9050 6300 9150 6400
Entry Wire Line
	9050 6500 9150 6600
Entry Wire Line
	9200 6400 9300 6500
Entry Wire Line
	9200 6200 9300 6300
Entry Wire Line
	9200 5900 9300 6000
Entry Wire Line
	9200 5700 9300 5800
Entry Wire Line
	9200 5400 9300 5500
Entry Wire Line
	9200 5200 9300 5300
Entry Wire Line
	9200 4900 9300 5000
Entry Wire Line
	9200 4700 9300 4800
Entry Wire Line
	11500 3800 11600 3700
Entry Wire Line
	11650 3900 11750 3800
Entry Wire Line
	11500 4000 11600 3900
Entry Wire Line
	11650 4100 11750 4000
Entry Wire Line
	11500 4300 11600 4200
Entry Wire Line
	11650 4400 11750 4300
Entry Wire Line
	11500 4500 11600 4400
Entry Wire Line
	11650 4600 11750 4500
Entry Wire Line
	11500 4800 11600 4700
Entry Wire Line
	11650 4900 11750 4800
Entry Wire Line
	11500 5000 11600 4900
Entry Wire Line
	11650 5100 11750 5000
Entry Wire Line
	11500 5300 11600 5200
Entry Wire Line
	11650 5400 11750 5300
Entry Wire Line
	11500 5500 11600 5400
Entry Wire Line
	11650 5600 11750 5500
Entry Wire Line
	11500 5800 11600 5700
Entry Wire Line
	11650 5900 11750 5800
Entry Wire Line
	11500 6000 11600 5900
Entry Wire Line
	11650 6100 11750 6000
Entry Wire Line
	11500 6300 11600 6200
Entry Wire Line
	11650 6400 11750 6300
Entry Wire Line
	11500 6500 11600 6400
Entry Wire Line
	11650 6600 11750 6500
Text Label 11000 3800 0    60   ~ 0
GPIO_N0
Text Label 11000 3900 0    60   ~ 0
GPIO_P0
Text Label 11000 4000 0    60   ~ 0
GPIO_N2
Text Label 11000 4100 0    60   ~ 0
GPIO_P2
Text Label 11000 4300 0    60   ~ 0
GPIO_N4
Text Label 11000 4400 0    60   ~ 0
GPIO_P4
Text Label 11000 4500 0    60   ~ 0
GPIO_N6
Text Label 11000 4600 0    60   ~ 0
GPIO_P6
Text Label 11000 4800 0    60   ~ 0
GPIO_N8
Text Label 11000 4900 0    60   ~ 0
GPIO_P8
Text Label 11000 5000 0    60   ~ 0
GPIO_N10
Text Label 11000 5100 0    60   ~ 0
GPIO_P10
Text Label 11000 5300 0    60   ~ 0
GPIO_N12
Text Label 11000 5400 0    60   ~ 0
GPIO_P12
Text Label 11000 5500 0    60   ~ 0
GPIO_N14
Text Label 11000 5600 0    60   ~ 0
GPIO_P14
Text Label 11000 5800 0    60   ~ 0
GPIO_N16
Text Label 11000 5900 0    60   ~ 0
GPIO_P16
Text Label 11000 6000 0    60   ~ 0
GPIO_N18
Text Label 11000 6100 0    60   ~ 0
GPIO_P18
Text Label 11000 6300 0    60   ~ 0
GPIO_N20
Text Label 11000 6400 0    60   ~ 0
GPIO_P20
Text Label 11000 6500 0    60   ~ 0
GPIO_N22
Text Label 11000 6600 0    60   ~ 0
GPIO_P22
Text Label 9400 3800 0    60   ~ 0
GPIO_N1
Text Label 9400 3900 0    60   ~ 0
GPIO_P1
Text Label 9400 4000 0    60   ~ 0
GPIO_N3
Text Label 9400 4100 0    60   ~ 0
GPIO_P3
Text Label 9400 4300 0    60   ~ 0
GPIO_N5
Text Label 9400 4400 0    60   ~ 0
GPIO_P5
Text Label 9400 4500 0    60   ~ 0
GPIO_N7
Text Label 9400 4600 0    60   ~ 0
GPIO_P7
Text Label 9400 4800 0    60   ~ 0
GPIO_N9
Text Label 9400 4900 0    60   ~ 0
GPIO_P9
Text Label 9400 5000 0    60   ~ 0
GPIO_N11
Text Label 9400 5100 0    60   ~ 0
GPIO_P11
Text Label 9400 5300 0    60   ~ 0
GPIO_N13
Text Label 9400 5400 0    60   ~ 0
GPIO_P13
Text Label 9400 5500 0    60   ~ 0
GPIO_N15
Text Label 9400 5600 0    60   ~ 0
GPIO_P15
Text Label 9400 5800 0    60   ~ 0
GPIO_N17
Text Label 9400 5900 0    60   ~ 0
GPIO_P17
Text Label 9400 6000 0    60   ~ 0
GPIO_N19
Text Label 9400 6100 0    60   ~ 0
GPIO_P19
Text Label 9400 6300 0    60   ~ 0
GPIO_N21
Text Label 9400 6400 0    60   ~ 0
GPIO_P21
Text Label 9400 6500 0    60   ~ 0
GPIO_N23
Text Label 9400 6600 0    60   ~ 0
GPIO_P23
Text HLabel 8650 2850 0    60   BiDi ~ 0
GPIO_N[23:0]
Text HLabel 8650 3000 0    60   BiDi ~ 0
GPIO_P[23:0]
Text Label 5700 2800 2    60   ~ 0
GPIO_N0
Text Label 5700 2900 2    60   ~ 0
GPIO_N1
Text Label 5700 3000 2    60   ~ 0
GPIO_N2
Text Label 5700 3100 2    60   ~ 0
GPIO_N3
Text Label 5700 3200 2    60   ~ 0
GPIO_N4
Text Label 5700 3300 2    60   ~ 0
GPIO_N5
Text Label 5700 3400 2    60   ~ 0
GPIO_N6
Text Label 5700 3500 2    60   ~ 0
GPIO_N7
Text Label 5700 3600 2    60   ~ 0
GPIO_N8
Text Label 5700 3700 2    60   ~ 0
GPIO_N9
Text Label 5700 3800 2    60   ~ 0
GPIO_N10
Text Label 5700 3900 2    60   ~ 0
GPIO_N11
Text Label 5700 4000 2    60   ~ 0
GPIO_N12
Text Label 5700 4100 2    60   ~ 0
GPIO_N13
Text Label 5700 4200 2    60   ~ 0
GPIO_N14
Text Label 5700 4300 2    60   ~ 0
GPIO_N15
Text Label 5700 4400 2    60   ~ 0
GPIO_N16
Text Label 5700 4500 2    60   ~ 0
GPIO_N17
Text Label 5700 4600 2    60   ~ 0
GPIO_N18
Text Label 5700 4700 2    60   ~ 0
GPIO_N19
Text Label 5700 4800 2    60   ~ 0
GPIO_N20
Text Label 5700 4900 2    60   ~ 0
GPIO_N21
Text Label 5700 5000 2    60   ~ 0
GPIO_N22
Text Label 5700 5100 2    60   ~ 0
GPIO_N23
Text Label 5700 5300 2    60   ~ 0
GPIO_P0
Text Label 5700 5400 2    60   ~ 0
GPIO_P1
Text Label 5700 5500 2    60   ~ 0
GPIO_P2
Text Label 5700 5600 2    60   ~ 0
GPIO_P3
Text Label 5700 5700 2    60   ~ 0
GPIO_P4
Text Label 5700 5800 2    60   ~ 0
GPIO_P5
Text Label 5700 5900 2    60   ~ 0
GPIO_P6
Text Label 5700 6000 2    60   ~ 0
GPIO_P7
Text Label 5700 6100 2    60   ~ 0
GPIO_P8
Text Label 5700 6200 2    60   ~ 0
GPIO_P9
Text Label 5700 6300 2    60   ~ 0
GPIO_P10
Text Label 5700 6400 2    60   ~ 0
GPIO_P11
Text Label 5700 6500 2    60   ~ 0
GPIO_P12
Text Label 5700 6600 2    60   ~ 0
GPIO_P13
Text Label 5700 6700 2    60   ~ 0
GPIO_P14
Text Label 5700 6800 2    60   ~ 0
GPIO_P15
Text Label 5700 6900 2    60   ~ 0
GPIO_P16
Text Label 5700 7000 2    60   ~ 0
GPIO_P17
Text Label 5700 7100 2    60   ~ 0
GPIO_P18
Text Label 5700 7200 2    60   ~ 0
GPIO_P19
Text Label 5700 7300 2    60   ~ 0
GPIO_P20
Text Label 5700 7400 2    60   ~ 0
GPIO_P21
Text Label 5700 7500 2    60   ~ 0
GPIO_P22
Text Label 5700 7600 2    60   ~ 0
GPIO_P23
Text Label 6150 2800 2    60   ~ 0
GPIO0
Text Label 6150 2900 2    60   ~ 0
GPIO1
Text Label 6150 3000 2    60   ~ 0
GPIO4
Text Label 6150 3100 2    60   ~ 0
GPIO5
Text Label 6150 3200 2    60   ~ 0
GPIO8
Text Label 6150 3300 2    60   ~ 0
GPIO9
Text Label 6150 3400 2    60   ~ 0
GPIO12
Text Label 6150 3500 2    60   ~ 0
GPIO13
Text Label 6150 3600 2    60   ~ 0
GPIO16
Text Label 6150 3700 2    60   ~ 0
GPIO17
Text Label 6150 3800 2    60   ~ 0
GPIO20
Text Label 6150 3900 2    60   ~ 0
GPIO21
Text Label 6150 4000 2    60   ~ 0
GPIO24
Text Label 6150 4100 2    60   ~ 0
GPIO25
Text Label 6150 4200 2    60   ~ 0
GPIO28
Text Label 6150 4300 2    60   ~ 0
GPIO29
Text Label 6150 4400 2    60   ~ 0
GPIO32
Text Label 6150 4500 2    60   ~ 0
GPIO33
Text Label 6150 4600 2    60   ~ 0
GPIO36
Text Label 6150 4700 2    60   ~ 0
GPIO37
Text Label 6150 4800 2    60   ~ 0
GPIO40
Text Label 6150 4900 2    60   ~ 0
GPIO41
Text Label 6150 5000 2    60   ~ 0
GPIO44
Text Label 6150 5100 2    60   ~ 0
GPIO45
Text Label 6150 5300 2    60   ~ 0
GPIO2
Text Label 6150 5400 2    60   ~ 0
GPIO3
Text Label 6150 5500 2    60   ~ 0
GPIO6
Text Label 6150 5600 2    60   ~ 0
GPIO7
Text Label 6150 5700 2    60   ~ 0
GPIO10
Text Label 6150 5800 2    60   ~ 0
GPIO11
Text Label 6150 5900 2    60   ~ 0
GPIO14
Text Label 6150 6000 2    60   ~ 0
GPIO15
Text Label 6150 6100 2    60   ~ 0
GPIO18
Text Label 6150 6200 2    60   ~ 0
GPIO19
Text Label 6150 6300 2    60   ~ 0
GPIO22
Text Label 6150 6400 2    60   ~ 0
GPIO23
Text Label 6150 6500 2    60   ~ 0
GPIO26
Text Label 6150 6600 2    60   ~ 0
GPIO27
Text Label 6150 6700 2    60   ~ 0
GPIO30
Text Label 6150 6800 2    60   ~ 0
GPIO31
Text Label 6150 6900 2    60   ~ 0
GPIO34
Text Label 6150 7000 2    60   ~ 0
GPIO35
Text Label 6150 7100 2    60   ~ 0
GPIO38
Text Label 6150 7200 2    60   ~ 0
GPIO39
Text Label 6150 7300 2    60   ~ 0
GPIO42
Text Label 6150 7400 2    60   ~ 0
GPIO43
Text Label 6150 7500 2    60   ~ 0
GPIO46
Text Label 6150 7600 2    60   ~ 0
GPIO47
Entry Wire Line
	6150 7600 6250 7500
Entry Wire Line
	6150 7500 6250 7400
Entry Wire Line
	6150 7400 6250 7300
Entry Wire Line
	6150 7300 6250 7200
Entry Wire Line
	6150 7200 6250 7100
Entry Wire Line
	6150 7100 6250 7000
Entry Wire Line
	6150 7000 6250 6900
Entry Wire Line
	6150 6900 6250 6800
Entry Wire Line
	6150 6800 6250 6700
Entry Wire Line
	6150 6700 6250 6600
Entry Wire Line
	6150 6600 6250 6500
Entry Wire Line
	6150 6500 6250 6400
Entry Wire Line
	6150 6400 6250 6300
Entry Wire Line
	6150 6300 6250 6200
Entry Wire Line
	6150 6200 6250 6100
Entry Wire Line
	6150 6100 6250 6000
Entry Wire Line
	6150 6000 6250 5900
Entry Wire Line
	6150 5900 6250 5800
Entry Wire Line
	6150 5800 6250 5700
Entry Wire Line
	6150 5700 6250 5600
Entry Wire Line
	6150 5600 6250 5500
Entry Wire Line
	6150 5500 6250 5400
Entry Wire Line
	6150 5400 6250 5300
Entry Wire Line
	6150 5300 6250 5200
Text Label 6750 2700 2    60   ~ 0
GPIO[47:0]
Text HLabel 6850 2700 2    60   BiDi ~ 0
GPIO[47:0]
Entry Wire Line
	6150 5100 6250 5000
Entry Wire Line
	6150 5000 6250 4900
Entry Wire Line
	6150 4900 6250 4800
Entry Wire Line
	6150 4800 6250 4700
Entry Wire Line
	6150 4700 6250 4600
Entry Wire Line
	6150 4600 6250 4500
Entry Wire Line
	6150 4500 6250 4400
Entry Wire Line
	6150 4400 6250 4300
Entry Wire Line
	6150 4300 6250 4200
Entry Wire Line
	6150 4200 6250 4100
Entry Wire Line
	6150 4100 6250 4000
Entry Wire Line
	6150 4000 6250 3900
Entry Wire Line
	6150 3900 6250 3800
Entry Wire Line
	6150 3800 6250 3700
Entry Wire Line
	6150 3700 6250 3600
Entry Wire Line
	6150 3600 6250 3500
Entry Wire Line
	6150 3500 6250 3400
Entry Wire Line
	6150 3400 6250 3300
Entry Wire Line
	6150 3300 6250 3200
Entry Wire Line
	6150 3200 6250 3100
Entry Wire Line
	6150 3100 6250 3000
Entry Wire Line
	6150 3000 6250 2900
Entry Wire Line
	6150 2900 6250 2800
Entry Wire Line
	6150 2800 6250 2700
Entry Wire Line
	5200 5400 5300 5300
Entry Wire Line
	5200 5500 5300 5400
Entry Wire Line
	5200 5600 5300 5500
Entry Wire Line
	5200 5700 5300 5600
Entry Wire Line
	5200 5800 5300 5700
Entry Wire Line
	5200 5900 5300 5800
Entry Wire Line
	5200 6000 5300 5900
Entry Wire Line
	5200 6100 5300 6000
Entry Wire Line
	5200 6200 5300 6100
Entry Wire Line
	5200 6300 5300 6200
Entry Wire Line
	5200 6400 5300 6300
Entry Wire Line
	5200 6500 5300 6400
Entry Wire Line
	5200 6600 5300 6500
Entry Wire Line
	5200 6700 5300 6600
Entry Wire Line
	5200 6800 5300 6700
Entry Wire Line
	5200 6900 5300 6800
Entry Wire Line
	5200 7000 5300 6900
Entry Wire Line
	5200 7100 5300 7000
Entry Wire Line
	5200 7200 5300 7100
Entry Wire Line
	5200 7300 5300 7200
Entry Wire Line
	5200 7400 5300 7300
Entry Wire Line
	5200 7500 5300 7400
Entry Wire Line
	5200 7600 5300 7500
Entry Wire Line
	5200 7700 5300 7600
Entry Wire Line
	5200 5000 5300 5100
Entry Wire Line
	5200 4900 5300 5000
Entry Wire Line
	5200 4800 5300 4900
Entry Wire Line
	5200 4700 5300 4800
Entry Wire Line
	5200 4600 5300 4700
Entry Wire Line
	5200 4500 5300 4600
Entry Wire Line
	5200 4400 5300 4500
Entry Wire Line
	5200 4300 5300 4400
Entry Wire Line
	5200 4200 5300 4300
Entry Wire Line
	5200 4100 5300 4200
Entry Wire Line
	5200 4000 5300 4100
Entry Wire Line
	5200 3900 5300 4000
Entry Wire Line
	5200 3800 5300 3900
Entry Wire Line
	5200 3700 5300 3800
Entry Wire Line
	5200 3600 5300 3700
Entry Wire Line
	5200 3500 5300 3600
Entry Wire Line
	5200 3400 5300 3500
Entry Wire Line
	5200 3300 5300 3400
Entry Wire Line
	5200 3200 5300 3300
Entry Wire Line
	5200 3100 5300 3200
Entry Wire Line
	5200 3000 5300 3100
Entry Wire Line
	5200 2900 5300 3000
Entry Wire Line
	5200 2800 5300 2900
Entry Wire Line
	5200 2700 5300 2800
Text Label 5900 2500 2    60   ~ 0
GPIO_N[23:0]
Text Label 6100 8000 2    60   ~ 0
GPIO_P[23:0]
Text Notes 6500 6900 1    80   ~ 0
Aliases between differential and single-ended GPIOs
Text HLabel 9650 3300 0    60   Output ~ 0
VGPIO
Wire Wire Line
	9800 3700 9950 3700
Wire Wire Line
	11050 3700 11050 3300
Wire Bus Line
	9200 2850 9200 6400
Wire Bus Line
	11600 2850 11600 6400
Wire Wire Line
	9950 3800 9300 3800
Wire Wire Line
	9150 3900 9950 3900
Wire Wire Line
	9300 4000 9950 4000
Wire Wire Line
	9950 4100 9150 4100
Wire Wire Line
	9300 4300 9950 4300
Wire Wire Line
	9150 4400 9950 4400
Wire Wire Line
	9300 4500 9950 4500
Wire Wire Line
	9950 4600 9150 4600
Wire Wire Line
	9300 4800 9950 4800
Wire Wire Line
	9150 4900 9950 4900
Wire Wire Line
	9300 5000 9950 5000
Wire Wire Line
	9950 5100 9150 5100
Wire Wire Line
	9300 5300 9950 5300
Wire Wire Line
	9150 5400 9950 5400
Wire Wire Line
	9300 5500 9950 5500
Wire Wire Line
	9950 5600 9150 5600
Wire Wire Line
	9300 5800 9950 5800
Wire Wire Line
	9150 5900 9950 5900
Wire Wire Line
	9300 6000 9950 6000
Wire Wire Line
	9950 6100 9150 6100
Wire Wire Line
	9300 6300 9950 6300
Wire Wire Line
	9150 6400 9950 6400
Wire Wire Line
	9300 6500 9950 6500
Wire Wire Line
	9950 6600 9150 6600
Wire Wire Line
	11500 3800 10950 3800
Wire Wire Line
	10950 3900 11650 3900
Wire Wire Line
	11500 4000 10950 4000
Wire Wire Line
	10950 4100 11650 4100
Wire Wire Line
	11500 4300 10950 4300
Wire Wire Line
	10950 4400 11650 4400
Wire Wire Line
	11500 4500 10950 4500
Wire Wire Line
	11650 4600 10950 4600
Wire Wire Line
	10950 4800 11500 4800
Wire Wire Line
	10950 4900 11650 4900
Wire Wire Line
	10950 5000 11500 5000
Wire Wire Line
	11650 5100 10950 5100
Wire Wire Line
	10950 5300 11500 5300
Wire Wire Line
	10950 5400 11650 5400
Wire Wire Line
	10950 5500 11500 5500
Wire Wire Line
	11650 5600 10950 5600
Wire Wire Line
	10950 5800 11500 5800
Wire Wire Line
	10950 5900 11650 5900
Wire Wire Line
	10950 6000 11500 6000
Wire Wire Line
	11650 6100 10950 6100
Wire Wire Line
	10950 6300 11500 6300
Wire Wire Line
	10950 6400 11650 6400
Wire Wire Line
	10950 6500 11500 6500
Wire Wire Line
	11650 6600 10950 6600
Wire Bus Line
	9050 3000 9050 6500
Wire Bus Line
	8650 2850 11600 2850
Wire Bus Line
	11750 3000 11750 6500
Wire Wire Line
	5300 2800 6150 2800
Wire Wire Line
	5300 2900 6150 2900
Wire Wire Line
	5300 3000 6150 3000
Wire Wire Line
	5300 3100 6150 3100
Wire Wire Line
	5300 3200 6150 3200
Wire Wire Line
	5300 3300 6150 3300
Wire Wire Line
	5300 3400 6150 3400
Wire Wire Line
	5300 3600 6150 3600
Wire Wire Line
	5300 3700 6150 3700
Wire Wire Line
	5300 3800 6150 3800
Wire Wire Line
	5300 3900 6150 3900
Wire Wire Line
	5300 4000 6150 4000
Wire Wire Line
	5300 4100 6150 4100
Wire Wire Line
	5300 4200 6150 4200
Wire Wire Line
	5300 4300 6150 4300
Wire Wire Line
	5300 4400 6150 4400
Wire Wire Line
	5300 4500 6150 4500
Wire Wire Line
	5300 4600 6150 4600
Wire Wire Line
	5300 4700 6150 4700
Wire Wire Line
	5300 4800 6150 4800
Wire Wire Line
	5300 4900 6150 4900
Wire Wire Line
	5300 5000 6150 5000
Wire Wire Line
	5300 5100 6150 5100
Wire Wire Line
	5300 5300 6150 5300
Wire Wire Line
	5300 5400 6150 5400
Wire Wire Line
	5300 5500 6150 5500
Wire Wire Line
	5300 5600 6150 5600
Wire Wire Line
	5300 5700 6150 5700
Wire Wire Line
	5300 5800 6150 5800
Wire Wire Line
	5300 5900 6150 5900
Wire Wire Line
	5300 6000 6150 6000
Wire Wire Line
	5300 6100 6150 6100
Wire Wire Line
	5300 6200 6150 6200
Wire Wire Line
	5300 6300 6150 6300
Wire Wire Line
	5300 6400 6150 6400
Wire Wire Line
	5300 6500 6150 6500
Wire Wire Line
	5300 6600 6150 6600
Wire Wire Line
	5300 6700 6150 6700
Wire Wire Line
	5300 6800 6150 6800
Wire Wire Line
	5300 6900 6150 6900
Wire Wire Line
	5300 7000 6150 7000
Wire Wire Line
	5300 7100 6150 7100
Wire Wire Line
	5300 7200 6150 7200
Wire Wire Line
	5300 7300 6150 7300
Wire Wire Line
	5300 7400 6150 7400
Wire Wire Line
	5300 7500 6150 7500
Wire Wire Line
	5300 7600 6150 7600
Wire Wire Line
	5300 3500 6150 3500
Wire Bus Line
	6250 2700 6250 7500
Wire Bus Line
	6250 2700 6850 2700
Wire Bus Line
	5200 2500 5200 5000
Wire Bus Line
	5200 2500 5950 2500
Wire Bus Line
	5200 5400 5200 8000
Wire Bus Line
	5200 8000 6150 8000
Wire Wire Line
	11250 3300 9650 3300
Wire Wire Line
	9800 3700 9800 3300
Connection ~ 9800 3300
Wire Wire Line
	11950 4200 11950 6700
Wire Wire Line
	10950 4200 11950 4200
Wire Wire Line
	10950 4700 11950 4700
Connection ~ 11950 4700
Wire Wire Line
	10950 5200 11950 5200
Connection ~ 11950 5200
Wire Wire Line
	10950 5700 11950 5700
Connection ~ 11950 5700
Wire Wire Line
	10950 6200 11950 6200
Connection ~ 11950 6200
Wire Wire Line
	8850 4200 9950 4200
Wire Wire Line
	8850 4200 8850 6700
Wire Wire Line
	8850 4700 9950 4700
Connection ~ 8850 4700
Wire Wire Line
	8850 5200 9950 5200
Connection ~ 8850 5200
Wire Wire Line
	8850 5700 9950 5700
Connection ~ 8850 5700
Wire Wire Line
	8850 6200 9950 6200
Connection ~ 8850 6200
Wire Wire Line
	11050 3700 10950 3700
Wire Bus Line
	8650 3000 11750 3000
$Comp
L CONN\SAMTEC\BTH\60 P1
U 1 1 538932DF
P 10450 5150
F 0 "P1" H 10450 6850 60  0000 C CNN
F 1 "CONN\\SAMTEC\\BTH\\60" V 10350 5150 60  0000 C CNN
F 2 "CONN_SAMTEC_BTH_60" V 10550 5150 60  0001 C CNN
F 3 "/mnt/windowsC/Adapteva/Fred-suppliers/Suppliers/www.samtec.com/BTH-XXX-XX-X-D-XX-MKT.pdf" H 10550 6050 60  0001 C CNN
F 4 "BTH-030-01-F-D-A" V 10450 5150 80  0000 C CNN "MFRPN"
F 5 "Samtec" V 10450 3950 60  0000 C CNN "MFR"
	1    10450 5150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
