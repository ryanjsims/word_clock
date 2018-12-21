EESchema Schematic File Version 4
LIBS:LED_grid_TLC5946-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Driver_LED:TLC5946PW U1
U 1 1 5C1878C5
P 3550 2550
F 0 "U1" H 3600 1614 50  0000 C CNN
F 1 "TLC5946PW" H 3600 1523 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 3850 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc5946.pdf" H 3850 1750 50  0001 C CNN
	1    3550 2550
	1    0    0    -1  
$EndComp
$Comp
L Driver_LED:TLC5946PW U5
U 1 1 5C18793F
P 3550 4850
F 0 "U5" H 3600 3914 50  0000 C CNN
F 1 "TLC5946PW" H 3600 3823 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 3850 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc5946.pdf" H 3850 4050 50  0001 C CNN
	1    3550 4850
	1    0    0    -1  
$EndComp
$Comp
L Driver_LED:TLC5946PW U2
U 1 1 5C187A11
P 6000 2550
F 0 "U2" H 6050 1614 50  0000 C CNN
F 1 "TLC5946PW" H 6050 1523 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 6300 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc5946.pdf" H 6300 1750 50  0001 C CNN
	1    6000 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J2
U 1 1 5C187B4D
P 1350 2350
F 0 "J2" H 1270 2967 50  0000 C CNN
F 1 "Conn_01x10" H 1270 2876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 1350 2350 50  0001 C CNN
F 3 "~" H 1350 2350 50  0001 C CNN
	1    1350 2350
	-1   0    0    -1  
$EndComp
Text Label 3050 2200 2    50   ~ 0
SIN
Text Label 3050 2300 2    50   ~ 0
MODE
Text Label 3050 2400 2    50   ~ 0
GSCLK
Text Label 3050 2700 2    50   ~ 0
XERR
Text Label 3050 2800 2    50   ~ 0
SOUT0
Text Label 5500 2200 2    50   ~ 0
SOUT0
Text Label 5500 2800 2    50   ~ 0
SOUT1
Text Label 3050 4500 2    50   ~ 0
SOUT1
Text Label 3050 5100 2    50   ~ 0
SOUT2
Text Label 3050 1900 2    50   ~ 0
BLANK
Text Label 3050 2000 2    50   ~ 0
XLAT
Text Label 3050 2100 2    50   ~ 0
SCLK
Text Label 3050 4200 2    50   ~ 0
BLANK
Text Label 3050 4300 2    50   ~ 0
XLAT
Text Label 3050 4400 2    50   ~ 0
SCLK
Text Label 5500 1900 2    50   ~ 0
BLANK
Text Label 5500 2000 2    50   ~ 0
XLAT
Text Label 5500 2100 2    50   ~ 0
SCLK
Text Label 3050 4600 2    50   ~ 0
MODE
Text Label 3050 4700 2    50   ~ 0
GSCLK
Text Label 3050 5000 2    50   ~ 0
XERR
Text Label 5500 2300 2    50   ~ 0
MODE
Text Label 5500 2400 2    50   ~ 0
GSCLK
Text Label 5500 2700 2    50   ~ 0
XERR
Wire Wire Line
	3050 1900 3150 1900
Wire Wire Line
	3050 2000 3150 2000
Wire Wire Line
	3050 2100 3150 2100
Wire Wire Line
	3050 2200 3150 2200
Wire Wire Line
	3050 2300 3150 2300
Wire Wire Line
	3050 2400 3150 2400
Wire Wire Line
	3050 2700 3150 2700
Wire Wire Line
	3050 2800 3150 2800
Wire Wire Line
	5500 1900 5600 1900
Wire Wire Line
	5500 2000 5600 2000
Wire Wire Line
	5500 2100 5600 2100
Wire Wire Line
	5500 2200 5600 2200
Wire Wire Line
	5500 2300 5600 2300
Wire Wire Line
	5500 2400 5600 2400
Wire Wire Line
	5500 2700 5600 2700
Wire Wire Line
	5500 2800 5600 2800
Wire Wire Line
	3050 4200 3150 4200
Wire Wire Line
	3050 4300 3150 4300
Wire Wire Line
	3050 4400 3150 4400
Wire Wire Line
	3050 4500 3150 4500
Wire Wire Line
	3050 4600 3150 4600
Wire Wire Line
	3050 4700 3150 4700
Wire Wire Line
	3050 5000 3150 5000
Wire Wire Line
	3050 5100 3150 5100
$Comp
L Device:R_US R1
U 1 1 5C188963
P 3200 1400
F 0 "R1" V 2995 1400 50  0000 C CNN
F 1 "3.3k" V 3086 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3240 1390 50  0001 C CNN
F 3 "~" H 3200 1400 50  0001 C CNN
	1    3200 1400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C1889D9
P 1850 2050
F 0 "#PWR0101" H 1850 1800 50  0001 C CNN
F 1 "GND" H 1855 1877 50  0000 C CNN
F 2 "" H 1850 2050 50  0001 C CNN
F 3 "" H 1850 2050 50  0001 C CNN
	1    1850 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 1400 3450 1400
Wire Wire Line
	3450 1400 3450 1500
Text Label 1650 1950 0    50   ~ 0
Vcc
Text Label 1650 2050 0    50   ~ 0
GND
Wire Wire Line
	3050 1400 2900 1400
Text Label 2900 1400 2    50   ~ 0
GND
Text Label 3550 3400 3    50   ~ 0
GND
Text Label 4150 1700 0    50   ~ 0
R0
Text Label 4150 2000 0    50   ~ 0
R1
Text Label 4150 2300 0    50   ~ 0
R2
Text Label 4150 2600 0    50   ~ 0
R3
Text Label 4150 2900 0    50   ~ 0
R4
Text Label 4150 3200 0    50   ~ 0
R5
Text Label 6600 1900 0    50   ~ 0
R6
Text Label 6600 2200 0    50   ~ 0
R7
Text Label 6600 2500 0    50   ~ 0
R8
Text Label 6600 2800 0    50   ~ 0
R9
Text Label 6600 3100 0    50   ~ 0
R10
Text Label 4150 4100 0    50   ~ 0
R11
Text Label 4150 4400 0    50   ~ 0
R12
Text Label 4150 4700 0    50   ~ 0
R13
Text Label 4150 5000 0    50   ~ 0
R14
Text Label 4150 5300 0    50   ~ 0
R15
Text Label 4150 1800 0    50   ~ 0
G0
Text Label 4150 2100 0    50   ~ 0
G1
Text Label 4150 2400 0    50   ~ 0
G2
Text Label 4150 2700 0    50   ~ 0
G3
Text Label 4150 3000 0    50   ~ 0
G4
Text Label 6600 1700 0    50   ~ 0
G5
Text Label 6600 2000 0    50   ~ 0
G6
Text Label 6600 2300 0    50   ~ 0
G7
Text Label 6600 2600 0    50   ~ 0
G8
Text Label 6600 2900 0    50   ~ 0
G9
Text Label 6600 3200 0    50   ~ 0
G10
Text Label 4150 4200 0    50   ~ 0
G11
Text Label 4150 4500 0    50   ~ 0
G12
Text Label 4150 4800 0    50   ~ 0
G13
Text Label 4150 5100 0    50   ~ 0
G14
Text Label 4150 5400 0    50   ~ 0
G15
Text Label 4150 1900 0    50   ~ 0
B0
Text Label 4150 2200 0    50   ~ 0
B1
Text Label 4150 2500 0    50   ~ 0
B2
Text Label 4150 2800 0    50   ~ 0
B3
Text Label 4150 3100 0    50   ~ 0
B4
Text Label 6600 1800 0    50   ~ 0
B5
Text Label 6600 2100 0    50   ~ 0
B6
Text Label 6600 2400 0    50   ~ 0
B7
Text Label 6600 2700 0    50   ~ 0
B8
Text Label 6600 3000 0    50   ~ 0
B9
Text Label 4150 4000 0    50   ~ 0
B10
Text Label 4150 4300 0    50   ~ 0
B11
Text Label 4150 4600 0    50   ~ 0
B12
Text Label 4150 4900 0    50   ~ 0
B13
Text Label 4150 5200 0    50   ~ 0
B14
Text Label 4150 5500 0    50   ~ 0
B15
Wire Wire Line
	4050 1700 4150 1700
Wire Wire Line
	4050 1800 4150 1800
Wire Wire Line
	4050 1900 4150 1900
Wire Wire Line
	4050 2000 4150 2000
Wire Wire Line
	4050 2100 4150 2100
Wire Wire Line
	4050 2200 4150 2200
Wire Wire Line
	4050 2300 4150 2300
Wire Wire Line
	4050 2400 4150 2400
Wire Wire Line
	4050 2500 4150 2500
Wire Wire Line
	4050 2600 4150 2600
Wire Wire Line
	4050 2700 4150 2700
Wire Wire Line
	4050 2800 4150 2800
Wire Wire Line
	4050 2900 4150 2900
Wire Wire Line
	4050 3000 4150 3000
Wire Wire Line
	4050 3100 4150 3100
Wire Wire Line
	4050 3200 4150 3200
Wire Wire Line
	6500 1700 6600 1700
Wire Wire Line
	6500 1800 6600 1800
Wire Wire Line
	6500 1900 6600 1900
Wire Wire Line
	6500 2000 6600 2000
Wire Wire Line
	6500 2100 6600 2100
Wire Wire Line
	6500 2200 6600 2200
Wire Wire Line
	6500 2300 6600 2300
Wire Wire Line
	6500 2400 6600 2400
Wire Wire Line
	6500 2500 6600 2500
Wire Wire Line
	6500 2600 6600 2600
Wire Wire Line
	6500 2700 6600 2700
Wire Wire Line
	6500 2800 6600 2800
Wire Wire Line
	6500 2900 6600 2900
Wire Wire Line
	6500 3000 6600 3000
Wire Wire Line
	6500 3100 6600 3100
Wire Wire Line
	6500 3200 6600 3200
Wire Wire Line
	4050 4000 4150 4000
Wire Wire Line
	4050 4100 4150 4100
Wire Wire Line
	4050 4200 4150 4200
Wire Wire Line
	4050 4300 4150 4300
Wire Wire Line
	4050 4400 4150 4400
Wire Wire Line
	4050 4500 4150 4500
Wire Wire Line
	4050 4600 4150 4600
Wire Wire Line
	4050 4700 4150 4700
Wire Wire Line
	4050 4800 4150 4800
Wire Wire Line
	4050 4900 4150 4900
Wire Wire Line
	4050 5000 4150 5000
Wire Wire Line
	4050 5100 4150 5100
Wire Wire Line
	4050 5200 4150 5200
Wire Wire Line
	4050 5300 4150 5300
Wire Wire Line
	4050 5400 4150 5400
Wire Wire Line
	4050 5500 4150 5500
Text Label 3550 5700 3    50   ~ 0
GND
Text Label 6000 3400 3    50   ~ 0
GND
Text Label 3550 1500 1    50   ~ 0
Vcc
Text Label 3550 3800 1    50   ~ 0
Vcc
Text Label 6000 1500 1    50   ~ 0
Vcc
Wire Wire Line
	1550 2050 1850 2050
Wire Wire Line
	1550 1950 1650 1950
$Comp
L Device:R_US R2
U 1 1 5C1AD889
P 5650 1400
F 0 "R2" V 5445 1400 50  0000 C CNN
F 1 "3.3k" V 5536 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5690 1390 50  0001 C CNN
F 3 "~" H 5650 1400 50  0001 C CNN
	1    5650 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 1400 5900 1400
Wire Wire Line
	5900 1400 5900 1500
Wire Wire Line
	5500 1400 5350 1400
Text Label 5350 1400 2    50   ~ 0
GND
$Comp
L Device:R_US R3
U 1 1 5C1B055B
P 3200 3700
F 0 "R3" V 2995 3700 50  0000 C CNN
F 1 "3.3k" V 3086 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3240 3690 50  0001 C CNN
F 3 "~" H 3200 3700 50  0001 C CNN
	1    3200 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3700 3450 3700
Wire Wire Line
	3450 3700 3450 3800
Wire Wire Line
	3050 3700 2900 3700
Text Label 2900 3700 2    50   ~ 0
GND
Text Label 1650 2450 0    50   ~ 0
SIN
Text Label 1650 2550 0    50   ~ 0
MODE
Text Label 1650 2650 0    50   ~ 0
GSCLK_EN
Text Label 1650 2150 0    50   ~ 0
BLANK
Text Label 1650 2250 0    50   ~ 0
XLAT
Text Label 1650 2350 0    50   ~ 0
SCLK
Text Label 1650 2750 0    50   ~ 0
XERR
Text Label 1650 2850 0    50   ~ 0
SOUT2
Wire Wire Line
	1650 2150 1550 2150
Wire Wire Line
	1650 2250 1550 2250
Wire Wire Line
	1650 2350 1550 2350
Wire Wire Line
	1650 2450 1550 2450
Wire Wire Line
	1650 2550 1550 2550
Wire Wire Line
	1650 2650 1550 2650
Wire Wire Line
	1650 2750 1550 2750
Wire Wire Line
	1650 2850 1550 2850
Text Label 8350 1550 2    50   ~ 0
R0
Text Label 8350 1850 2    50   ~ 0
R1
Text Label 8350 2150 2    50   ~ 0
R2
Text Label 8350 2950 2    50   ~ 0
R3
Text Label 8350 2650 2    50   ~ 0
R4
Text Label 8350 2350 2    50   ~ 0
R5
Text Label 8350 3350 2    50   ~ 0
R6
Text Label 8350 3650 2    50   ~ 0
R7
Text Label 8350 4050 2    50   ~ 0
R8
Text Label 8350 4350 2    50   ~ 0
R9
Text Label 8350 4650 2    50   ~ 0
R10
Text Label 8350 5450 2    50   ~ 0
R11
Text Label 8350 5150 2    50   ~ 0
R12
Text Label 8350 4850 2    50   ~ 0
R13
Text Label 8350 5850 2    50   ~ 0
R14
Text Label 8350 6150 2    50   ~ 0
R15
Text Label 8350 1650 2    50   ~ 0
G0
Text Label 8350 1950 2    50   ~ 0
G1
Text Label 8350 2250 2    50   ~ 0
G2
Text Label 8350 2850 2    50   ~ 0
G3
Text Label 8350 2550 2    50   ~ 0
G4
Text Label 8350 3150 2    50   ~ 0
G5
Text Label 8350 3450 2    50   ~ 0
G6
Text Label 8350 3750 2    50   ~ 0
G7
Text Label 8350 4150 2    50   ~ 0
G8
Text Label 8350 4450 2    50   ~ 0
G9
Text Label 8350 4750 2    50   ~ 0
G10
Text Label 8350 5350 2    50   ~ 0
G11
Text Label 8350 5050 2    50   ~ 0
G12
Text Label 8350 5650 2    50   ~ 0
G13
Text Label 8350 5950 2    50   ~ 0
G14
Text Label 8350 6250 2    50   ~ 0
G15
Text Label 8350 1750 2    50   ~ 0
B0
Text Label 8350 2050 2    50   ~ 0
B1
Text Label 8350 3050 2    50   ~ 0
B2
Text Label 8350 2750 2    50   ~ 0
B3
Text Label 8350 2450 2    50   ~ 0
B4
Text Label 8350 3250 2    50   ~ 0
B5
Text Label 8350 3550 2    50   ~ 0
B6
Text Label 8350 3850 2    50   ~ 0
B7
Text Label 8350 4250 2    50   ~ 0
B8
Text Label 8350 4550 2    50   ~ 0
B9
Text Label 8350 5550 2    50   ~ 0
B10
Text Label 8350 5250 2    50   ~ 0
B11
Text Label 8350 4950 2    50   ~ 0
B12
Text Label 8350 5750 2    50   ~ 0
B13
Text Label 8350 6050 2    50   ~ 0
B14
Text Label 8350 6350 2    50   ~ 0
B15
$Comp
L Device:Crystal Y1
U 1 1 5C207BAD
P 5250 5200
F 0 "Y1" H 5250 5468 50  0000 C CNN
F 1 "20MHz Crystal" H 5250 5377 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 5250 5200 50  0001 C CNN
F 3 "~" H 5250 5200 50  0001 C CNN
	1    5250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C208509
P 4950 5450
F 0 "C1" H 5065 5496 50  0000 L CNN
F 1 "10pF" H 5065 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4988 5300 50  0001 C CNN
F 3 "~" H 4950 5450 50  0001 C CNN
	1    4950 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C20855B
P 5550 5450
F 0 "C2" H 5665 5496 50  0000 L CNN
F 1 "10pF" H 5665 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5588 5300 50  0001 C CNN
F 3 "~" H 5550 5450 50  0001 C CNN
	1    5550 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5C20862D
P 5550 4950
F 0 "R5" H 5618 4996 50  0000 L CNN
F 1 "270Ω" H 5618 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5590 4940 50  0001 C CNN
F 3 "~" H 5550 4950 50  0001 C CNN
	1    5550 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5C2208AE
P 5250 4300
F 0 "R4" V 5045 4300 50  0000 C CNN
F 1 ">1MΩ" V 5136 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5290 4290 50  0001 C CNN
F 3 "~" H 5250 4300 50  0001 C CNN
	1    5250 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 4750 5550 4800
Wire Wire Line
	5550 5100 5550 5200
Wire Wire Line
	5550 5200 5400 5200
Connection ~ 5550 5200
Wire Wire Line
	5550 5200 5550 5300
Wire Wire Line
	5100 5200 4950 5200
Connection ~ 4950 5200
Wire Wire Line
	4950 5200 4950 5300
Text Label 4950 5600 3    50   ~ 0
GND
Text Label 5550 5600 3    50   ~ 0
GND
Wire Wire Line
	5550 4750 5550 4300
Wire Wire Line
	5550 4300 5400 4300
Connection ~ 5550 4750
Wire Wire Line
	5100 4300 4950 4300
Wire Wire Line
	5550 4750 5700 4750
Text Label 7000 4700 0    50   ~ 0
GSCLK
Text Label 6350 4400 2    50   ~ 0
GSCLK_EN
Wire Wire Line
	6350 4400 6350 4650
Wire Wire Line
	4950 4300 4950 4750
Wire Wire Line
	5000 4750 4950 4750
Connection ~ 4950 4750
Wire Wire Line
	4950 4750 4950 5200
$Comp
L 74xGxx:74AHC1G08 U3
U 1 1 5C32ABB6
P 6750 4700
F 0 "U3" H 6725 4967 50  0000 C CNN
F 1 "74LVC1G08DBVR" H 6725 4876 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 6750 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 6750 4700 50  0001 C CNN
	1    6750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4650 6450 4650
$Comp
L 74xGxx:74LVC2G14 U4
U 1 1 5C34688B
P 5300 4750
F 0 "U4" H 5275 5017 50  0000 C CNN
F 1 "74LVC2G14DBVR" H 5275 4926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 5300 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5300 4750 50  0001 C CNN
	1    5300 4750
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC2G14 U4
U 2 1 5C3468E4
P 6000 4750
F 0 "U4" H 5975 5017 50  0000 C CNN
F 1 "74LVC2G14DBVR" H 5975 4926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 6000 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 6000 4750 50  0001 C CNN
	2    6000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4750 6450 4750
Text Label 3050 2500 2    50   ~ 0
Vcc
Wire Wire Line
	3050 2500 3150 2500
Text Label 3050 4800 2    50   ~ 0
Vcc
Wire Wire Line
	3050 4800 3150 4800
Text Label 5500 2500 2    50   ~ 0
Vcc
Wire Wire Line
	5500 2500 5600 2500
$Comp
L power:VCC #PWR0102
U 1 1 5C38379D
P 3550 1500
F 0 "#PWR0102" H 3550 1350 50  0001 C CNN
F 1 "VCC" V 3567 1628 50  0000 L CNN
F 2 "" H 3550 1500 50  0001 C CNN
F 3 "" H 3550 1500 50  0001 C CNN
	1    3550 1500
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x24 J1
U 1 1 5C3839DA
P 8550 2650
F 0 "J1" H 8630 2642 50  0000 L CNN
F 1 "Conn_01x24" H 8630 2551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x24_P2.54mm_Vertical" H 8550 2650 50  0001 C CNN
F 3 "~" H 8550 2650 50  0001 C CNN
	1    8550 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x24 J3
U 1 1 5C383B5C
P 8550 5150
F 0 "J3" H 8630 5142 50  0000 L CNN
F 1 "Conn_01x24" H 8630 5051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x24_P2.54mm_Vertical" H 8550 5150 50  0001 C CNN
F 3 "~" H 8550 5150 50  0001 C CNN
	1    8550 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C5CC649
P 1300 4000
F 0 "C3" H 1415 4046 50  0000 L CNN
F 1 "0.1uF" H 1415 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1338 3850 50  0001 C CNN
F 3 "~" H 1300 4000 50  0001 C CNN
	1    1300 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5C5CC921
P 1300 3850
F 0 "#PWR0103" H 1300 3700 50  0001 C CNN
F 1 "VCC" H 1317 4023 50  0000 C CNN
F 2 "" H 1300 3850 50  0001 C CNN
F 3 "" H 1300 3850 50  0001 C CNN
	1    1300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C5CC975
P 1300 4150
F 0 "#PWR0104" H 1300 3900 50  0001 C CNN
F 1 "GND" H 1305 3977 50  0000 C CNN
F 2 "" H 1300 4150 50  0001 C CNN
F 3 "" H 1300 4150 50  0001 C CNN
	1    1300 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C5E5F70
P 1800 4000
F 0 "C4" H 1915 4046 50  0000 L CNN
F 1 "0.1uF" H 1915 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1838 3850 50  0001 C CNN
F 3 "~" H 1800 4000 50  0001 C CNN
	1    1800 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 5C5E5F77
P 1800 3850
F 0 "#PWR0105" H 1800 3700 50  0001 C CNN
F 1 "VCC" H 1817 4023 50  0000 C CNN
F 2 "" H 1800 3850 50  0001 C CNN
F 3 "" H 1800 3850 50  0001 C CNN
	1    1800 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C5E5F7D
P 1800 4150
F 0 "#PWR0106" H 1800 3900 50  0001 C CNN
F 1 "GND" H 1805 3977 50  0000 C CNN
F 2 "" H 1800 4150 50  0001 C CNN
F 3 "" H 1800 4150 50  0001 C CNN
	1    1800 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C5EAFDC
P 2300 4000
F 0 "C5" H 2415 4046 50  0000 L CNN
F 1 "0.1uF" H 2415 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2338 3850 50  0001 C CNN
F 3 "~" H 2300 4000 50  0001 C CNN
	1    2300 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5C5EAFE3
P 2300 3850
F 0 "#PWR0107" H 2300 3700 50  0001 C CNN
F 1 "VCC" H 2317 4023 50  0000 C CNN
F 2 "" H 2300 3850 50  0001 C CNN
F 3 "" H 2300 3850 50  0001 C CNN
	1    2300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5C5EAFE9
P 2300 4150
F 0 "#PWR0108" H 2300 3900 50  0001 C CNN
F 1 "GND" H 2305 3977 50  0000 C CNN
F 2 "" H 2300 4150 50  0001 C CNN
F 3 "" H 2300 4150 50  0001 C CNN
	1    2300 4150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
