EESchema Schematic File Version 4
LIBS:LED_grid_controllers-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 33
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
L MCU_Microchip_ATtiny:ATtiny85-20PU U?
U 1 1 5BFEAADC
P 2700 3900
AR Path="/5C024305/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C0259A7/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C025B0F/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C025E03/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C026322/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C026B4A/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C026D06/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C026D30/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C0272FA/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C027324/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C02734E/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C027378/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C028949/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C028973/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C028F67/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C028F91/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C028FBB/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C028FE5/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C02A4B5/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C02A4DF/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C02A509/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C02A533/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C02E5E3/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C02E60D/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C02E637/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C156C72/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C172B10/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C7E23F2/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C7E2422/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C853AFB/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5C87E360/5BFEAADC" Ref="U?"  Part="1" 
AR Path="/5D052951/5BFEAADC" Ref="U1"  Part="1" 
AR Path="/5D056BDA/5BFEAADC" Ref="U2"  Part="1" 
AR Path="/5D056BE3/5BFEAADC" Ref="U3"  Part="1" 
AR Path="/5D056BEC/5BFEAADC" Ref="U4"  Part="1" 
AR Path="/5D056C14/5BFEAADC" Ref="U5"  Part="1" 
AR Path="/5D056C1C/5BFEAADC" Ref="U6"  Part="1" 
AR Path="/5D056C24/5BFEAADC" Ref="U7"  Part="1" 
AR Path="/5D056C2C/5BFEAADC" Ref="U8"  Part="1" 
AR Path="/5D056C38/5BFEAADC" Ref="U9"  Part="1" 
AR Path="/5D056C40/5BFEAADC" Ref="U10"  Part="1" 
AR Path="/5D056C48/5BFEAADC" Ref="U11"  Part="1" 
AR Path="/5D056C50/5BFEAADC" Ref="U12"  Part="1" 
AR Path="/5D056C5C/5BFEAADC" Ref="U13"  Part="1" 
AR Path="/5D056C64/5BFEAADC" Ref="U14"  Part="1" 
AR Path="/5D056C6C/5BFEAADC" Ref="U15"  Part="1" 
AR Path="/5D056C74/5BFEAADC" Ref="U16"  Part="1" 
F 0 "U1" H 2170 3946 50  0000 R CNN
F 1 "ATtiny85-20PU" H 2170 3855 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2700 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 2700 3900 50  0001 C CNN
	1    2700 3900
	1    0    0    -1  
$EndComp
Text Label 3450 3600 0    50   ~ 0
R_PWM
Text Label 3450 3700 0    50   ~ 0
G_PWM
Text Label 3450 4000 0    50   ~ 0
B_PWM
Text HLabel 3450 4100 2    50   Input ~ 0
DCLK
Text HLabel 3450 3900 2    50   Input ~ 0
DIN
Text HLabel 3450 3800 2    50   Output ~ 0
DOUT
$Comp
L power:GND #PWR?
U 1 1 5BFFC55B
P 5500 4300
AR Path="/5C024305/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C0259A7/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C025B0F/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C025E03/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C026322/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C026B4A/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C026D06/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C026D30/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C0272FA/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C027324/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C02734E/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C027378/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C028949/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C028973/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C028F67/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C028F91/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C028FBB/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C028FE5/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C02A4B5/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C02A4DF/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C02A509/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C02A533/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C02E5E3/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C02E60D/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C02E637/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C156C72/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C172B10/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C7E23F2/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C7E2422/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C853AFB/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5C87E360/5BFFC55B" Ref="#PWR?"  Part="1" 
AR Path="/5D052951/5BFFC55B" Ref="#PWR03"  Part="1" 
AR Path="/5D056BDA/5BFFC55B" Ref="#PWR06"  Part="1" 
AR Path="/5D056BE3/5BFFC55B" Ref="#PWR09"  Part="1" 
AR Path="/5D056BEC/5BFFC55B" Ref="#PWR012"  Part="1" 
AR Path="/5D056C14/5BFFC55B" Ref="#PWR015"  Part="1" 
AR Path="/5D056C1C/5BFFC55B" Ref="#PWR018"  Part="1" 
AR Path="/5D056C24/5BFFC55B" Ref="#PWR021"  Part="1" 
AR Path="/5D056C2C/5BFFC55B" Ref="#PWR024"  Part="1" 
AR Path="/5D056C38/5BFFC55B" Ref="#PWR027"  Part="1" 
AR Path="/5D056C40/5BFFC55B" Ref="#PWR030"  Part="1" 
AR Path="/5D056C48/5BFFC55B" Ref="#PWR033"  Part="1" 
AR Path="/5D056C50/5BFFC55B" Ref="#PWR036"  Part="1" 
AR Path="/5D056C5C/5BFFC55B" Ref="#PWR039"  Part="1" 
AR Path="/5D056C64/5BFFC55B" Ref="#PWR042"  Part="1" 
AR Path="/5D056C6C/5BFFC55B" Ref="#PWR045"  Part="1" 
AR Path="/5D056C74/5BFFC55B" Ref="#PWR048"  Part="1" 
F 0 "#PWR03" H 5500 4050 50  0001 C CNN
F 1 "GND" H 5505 4127 50  0000 C CNN
F 2 "" H 5500 4300 50  0001 C CNN
F 3 "" H 5500 4300 50  0001 C CNN
	1    5500 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BFFC593
P 6700 4300
AR Path="/5C024305/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C0259A7/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C025B0F/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C025E03/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C026322/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C026B4A/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C026D06/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C026D30/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C0272FA/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C027324/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C02734E/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C027378/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C028949/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C028973/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C028F67/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C028F91/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C028FBB/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C028FE5/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C02A4B5/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C02A4DF/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C02A509/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C02A533/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C02E5E3/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C02E60D/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C02E637/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C156C72/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C172B10/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C7E23F2/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C7E2422/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C853AFB/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5C87E360/5BFFC593" Ref="#PWR?"  Part="1" 
AR Path="/5D052951/5BFFC593" Ref="#PWR04"  Part="1" 
AR Path="/5D056BDA/5BFFC593" Ref="#PWR07"  Part="1" 
AR Path="/5D056BE3/5BFFC593" Ref="#PWR010"  Part="1" 
AR Path="/5D056BEC/5BFFC593" Ref="#PWR013"  Part="1" 
AR Path="/5D056C14/5BFFC593" Ref="#PWR016"  Part="1" 
AR Path="/5D056C1C/5BFFC593" Ref="#PWR019"  Part="1" 
AR Path="/5D056C24/5BFFC593" Ref="#PWR022"  Part="1" 
AR Path="/5D056C2C/5BFFC593" Ref="#PWR025"  Part="1" 
AR Path="/5D056C38/5BFFC593" Ref="#PWR028"  Part="1" 
AR Path="/5D056C40/5BFFC593" Ref="#PWR031"  Part="1" 
AR Path="/5D056C48/5BFFC593" Ref="#PWR034"  Part="1" 
AR Path="/5D056C50/5BFFC593" Ref="#PWR037"  Part="1" 
AR Path="/5D056C5C/5BFFC593" Ref="#PWR040"  Part="1" 
AR Path="/5D056C64/5BFFC593" Ref="#PWR043"  Part="1" 
AR Path="/5D056C6C/5BFFC593" Ref="#PWR046"  Part="1" 
AR Path="/5D056C74/5BFFC593" Ref="#PWR049"  Part="1" 
F 0 "#PWR04" H 6700 4050 50  0001 C CNN
F 1 "GND" H 6705 4127 50  0000 C CNN
F 2 "" H 6700 4300 50  0001 C CNN
F 3 "" H 6700 4300 50  0001 C CNN
	1    6700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BFFD49E
P 7750 4300
AR Path="/5C024305/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C0259A7/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C025B0F/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C025E03/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C026322/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C026B4A/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C026D06/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C026D30/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C0272FA/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C027324/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C02734E/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C027378/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C028949/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C028973/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C028F67/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C028F91/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C028FBB/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C028FE5/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C02A4B5/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C02A4DF/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C02A509/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C02A533/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C02E5E3/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C02E60D/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C02E637/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C156C72/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C172B10/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C7E23F2/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C7E2422/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C853AFB/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5C87E360/5BFFD49E" Ref="#PWR?"  Part="1" 
AR Path="/5D052951/5BFFD49E" Ref="#PWR05"  Part="1" 
AR Path="/5D056BDA/5BFFD49E" Ref="#PWR08"  Part="1" 
AR Path="/5D056BE3/5BFFD49E" Ref="#PWR011"  Part="1" 
AR Path="/5D056BEC/5BFFD49E" Ref="#PWR014"  Part="1" 
AR Path="/5D056C14/5BFFD49E" Ref="#PWR017"  Part="1" 
AR Path="/5D056C1C/5BFFD49E" Ref="#PWR020"  Part="1" 
AR Path="/5D056C24/5BFFD49E" Ref="#PWR023"  Part="1" 
AR Path="/5D056C2C/5BFFD49E" Ref="#PWR026"  Part="1" 
AR Path="/5D056C38/5BFFD49E" Ref="#PWR029"  Part="1" 
AR Path="/5D056C40/5BFFD49E" Ref="#PWR032"  Part="1" 
AR Path="/5D056C48/5BFFD49E" Ref="#PWR035"  Part="1" 
AR Path="/5D056C50/5BFFD49E" Ref="#PWR038"  Part="1" 
AR Path="/5D056C5C/5BFFD49E" Ref="#PWR041"  Part="1" 
AR Path="/5D056C64/5BFFD49E" Ref="#PWR044"  Part="1" 
AR Path="/5D056C6C/5BFFD49E" Ref="#PWR047"  Part="1" 
AR Path="/5D056C74/5BFFD49E" Ref="#PWR050"  Part="1" 
F 0 "#PWR05" H 7750 4050 50  0001 C CNN
F 1 "GND" H 7755 4127 50  0000 C CNN
F 2 "" H 7750 4300 50  0001 C CNN
F 3 "" H 7750 4300 50  0001 C CNN
	1    7750 4300
	1    0    0    -1  
$EndComp
Text HLabel 5500 3350 1    50   Input ~ 0
R
Text HLabel 6700 3350 1    50   Input ~ 0
G
Text HLabel 7750 3350 1    50   Input ~ 0
B
Wire Wire Line
	7750 3350 7750 3600
Wire Wire Line
	6700 3350 6700 3600
Wire Wire Line
	5500 3350 5500 3600
$Comp
L Device:R_US R?
U 1 1 5C02BFDE
P 5500 4150
AR Path="/5C024305/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C026B4A/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C028949/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C028973/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C02A4B5/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C02A4DF/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C02A509/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C02A533/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C02E5E3/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C02E60D/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C02E637/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C156C72/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C7E23F2/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C7E2422/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C853AFB/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5C87E360/5C02BFDE" Ref="R?"  Part="1" 
AR Path="/5D052951/5C02BFDE" Ref="R1"  Part="1" 
AR Path="/5D056BDA/5C02BFDE" Ref="R4"  Part="1" 
AR Path="/5D056BE3/5C02BFDE" Ref="R7"  Part="1" 
AR Path="/5D056BEC/5C02BFDE" Ref="R10"  Part="1" 
AR Path="/5D056C14/5C02BFDE" Ref="R13"  Part="1" 
AR Path="/5D056C1C/5C02BFDE" Ref="R16"  Part="1" 
AR Path="/5D056C24/5C02BFDE" Ref="R19"  Part="1" 
AR Path="/5D056C2C/5C02BFDE" Ref="R22"  Part="1" 
AR Path="/5D056C38/5C02BFDE" Ref="R25"  Part="1" 
AR Path="/5D056C40/5C02BFDE" Ref="R28"  Part="1" 
AR Path="/5D056C48/5C02BFDE" Ref="R31"  Part="1" 
AR Path="/5D056C50/5C02BFDE" Ref="R34"  Part="1" 
AR Path="/5D056C5C/5C02BFDE" Ref="R37"  Part="1" 
AR Path="/5D056C64/5C02BFDE" Ref="R40"  Part="1" 
AR Path="/5D056C6C/5C02BFDE" Ref="R43"  Part="1" 
AR Path="/5D056C74/5C02BFDE" Ref="R46"  Part="1" 
F 0 "R1" H 5568 4196 50  0000 L CNN
F 1 "100" H 5568 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5540 4140 50  0001 C CNN
F 3 "~" H 5500 4150 50  0001 C CNN
	1    5500 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C02C06E
P 6700 4150
AR Path="/5C024305/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C026B4A/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C028949/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C028973/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C02A4B5/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C02A4DF/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C02A509/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C02A533/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C02E5E3/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C02E60D/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C02E637/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C156C72/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C7E23F2/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C7E2422/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C853AFB/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5C87E360/5C02C06E" Ref="R?"  Part="1" 
AR Path="/5D052951/5C02C06E" Ref="R2"  Part="1" 
AR Path="/5D056BDA/5C02C06E" Ref="R5"  Part="1" 
AR Path="/5D056BE3/5C02C06E" Ref="R8"  Part="1" 
AR Path="/5D056BEC/5C02C06E" Ref="R11"  Part="1" 
AR Path="/5D056C14/5C02C06E" Ref="R14"  Part="1" 
AR Path="/5D056C1C/5C02C06E" Ref="R17"  Part="1" 
AR Path="/5D056C24/5C02C06E" Ref="R20"  Part="1" 
AR Path="/5D056C2C/5C02C06E" Ref="R23"  Part="1" 
AR Path="/5D056C38/5C02C06E" Ref="R26"  Part="1" 
AR Path="/5D056C40/5C02C06E" Ref="R29"  Part="1" 
AR Path="/5D056C48/5C02C06E" Ref="R32"  Part="1" 
AR Path="/5D056C50/5C02C06E" Ref="R35"  Part="1" 
AR Path="/5D056C5C/5C02C06E" Ref="R38"  Part="1" 
AR Path="/5D056C64/5C02C06E" Ref="R41"  Part="1" 
AR Path="/5D056C6C/5C02C06E" Ref="R44"  Part="1" 
AR Path="/5D056C74/5C02C06E" Ref="R47"  Part="1" 
F 0 "R2" H 6768 4196 50  0000 L CNN
F 1 "150" H 6768 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6740 4140 50  0001 C CNN
F 3 "~" H 6700 4150 50  0001 C CNN
	1    6700 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C02C141
P 7750 4150
AR Path="/5C024305/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C026B4A/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C028949/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C028973/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C02A4B5/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C02A4DF/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C02A509/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C02A533/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C02E5E3/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C02E60D/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C02E637/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C156C72/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C7E23F2/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C7E2422/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C853AFB/5C02C141" Ref="R?"  Part="1" 
AR Path="/5C87E360/5C02C141" Ref="R?"  Part="1" 
AR Path="/5D052951/5C02C141" Ref="R3"  Part="1" 
AR Path="/5D056BDA/5C02C141" Ref="R6"  Part="1" 
AR Path="/5D056BE3/5C02C141" Ref="R9"  Part="1" 
AR Path="/5D056BEC/5C02C141" Ref="R12"  Part="1" 
AR Path="/5D056C14/5C02C141" Ref="R15"  Part="1" 
AR Path="/5D056C1C/5C02C141" Ref="R18"  Part="1" 
AR Path="/5D056C24/5C02C141" Ref="R21"  Part="1" 
AR Path="/5D056C2C/5C02C141" Ref="R24"  Part="1" 
AR Path="/5D056C38/5C02C141" Ref="R27"  Part="1" 
AR Path="/5D056C40/5C02C141" Ref="R30"  Part="1" 
AR Path="/5D056C48/5C02C141" Ref="R33"  Part="1" 
AR Path="/5D056C50/5C02C141" Ref="R36"  Part="1" 
AR Path="/5D056C5C/5C02C141" Ref="R39"  Part="1" 
AR Path="/5D056C64/5C02C141" Ref="R42"  Part="1" 
AR Path="/5D056C6C/5C02C141" Ref="R45"  Part="1" 
AR Path="/5D056C74/5C02C141" Ref="R48"  Part="1" 
F 0 "R3" H 7818 4196 50  0000 L CNN
F 1 "150" H 7818 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7790 4140 50  0001 C CNN
F 3 "~" H 7750 4150 50  0001 C CNN
	1    7750 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack03_SIP RN1
U 1 1 5D052F36
P 5800 5300
AR Path="/5D052951/5D052F36" Ref="RN1"  Part="1" 
AR Path="/5D056BDA/5D052F36" Ref="RN2"  Part="1" 
AR Path="/5D056BE3/5D052F36" Ref="RN3"  Part="1" 
AR Path="/5D056BEC/5D052F36" Ref="RN4"  Part="1" 
AR Path="/5D056C14/5D052F36" Ref="RN5"  Part="1" 
AR Path="/5D056C1C/5D052F36" Ref="RN6"  Part="1" 
AR Path="/5D056C24/5D052F36" Ref="RN7"  Part="1" 
AR Path="/5D056C2C/5D052F36" Ref="RN8"  Part="1" 
AR Path="/5D056C38/5D052F36" Ref="RN9"  Part="1" 
AR Path="/5D056C40/5D052F36" Ref="RN10"  Part="1" 
AR Path="/5D056C48/5D052F36" Ref="RN11"  Part="1" 
AR Path="/5D056C50/5D052F36" Ref="RN12"  Part="1" 
AR Path="/5D056C5C/5D052F36" Ref="RN13"  Part="1" 
AR Path="/5D056C64/5D052F36" Ref="RN14"  Part="1" 
AR Path="/5D056C6C/5D052F36" Ref="RN15"  Part="1" 
AR Path="/5D056C74/5D052F36" Ref="RN16"  Part="1" 
F 0 "RN1" V 5808 5505 50  0000 L CNN
F 1 "R_Pack03_SIP_10k" V 5899 5505 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP6" V 6375 5300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 5800 5300 50  0001 C CNN
	1    5800 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 3600 3300 3600
Wire Wire Line
	3450 3700 3300 3700
Wire Wire Line
	3450 3900 3300 3900
Wire Wire Line
	3450 4000 3300 4000
Wire Wire Line
	3450 4100 3300 4100
Text Label 5600 5000 2    50   ~ 0
R_PWM
Text Label 5600 5300 2    50   ~ 0
G_PWM
Text Label 5600 5600 2    50   ~ 0
B_PWM
Text Label 5200 3800 1    50   ~ 0
R_RES_OUT
Text Label 6400 3800 1    50   ~ 0
G_RES_OUT
Text Label 7450 3800 1    50   ~ 0
B_RES_OUT
Text Label 5600 5100 2    50   ~ 0
R_RES_OUT
Text Label 5600 5400 2    50   ~ 0
G_RES_OUT
Text Label 5600 5700 2    50   ~ 0
B_RES_OUT
Text HLabel 2700 3300 1    50   Input ~ 0
Vcc
Text HLabel 2700 4500 3    50   Input ~ 0
GND
Wire Wire Line
	3450 3800 3300 3800
$Comp
L Transistor_BJT:2N3904_SOT-23 Q1
U 1 1 5C0E680F
P 5400 3800
AR Path="/5D052951/5C0E680F" Ref="Q1"  Part="1" 
AR Path="/5D056BDA/5C0E680F" Ref="Q4"  Part="1" 
AR Path="/5D056BE3/5C0E680F" Ref="Q7"  Part="1" 
AR Path="/5D056BEC/5C0E680F" Ref="Q10"  Part="1" 
AR Path="/5D056C14/5C0E680F" Ref="Q13"  Part="1" 
AR Path="/5D056C1C/5C0E680F" Ref="Q16"  Part="1" 
AR Path="/5D056C24/5C0E680F" Ref="Q19"  Part="1" 
AR Path="/5D056C2C/5C0E680F" Ref="Q22"  Part="1" 
AR Path="/5D056C38/5C0E680F" Ref="Q25"  Part="1" 
AR Path="/5D056C40/5C0E680F" Ref="Q28"  Part="1" 
AR Path="/5D056C48/5C0E680F" Ref="Q31"  Part="1" 
AR Path="/5D056C50/5C0E680F" Ref="Q34"  Part="1" 
AR Path="/5D056C5C/5C0E680F" Ref="Q37"  Part="1" 
AR Path="/5D056C64/5C0E680F" Ref="Q40"  Part="1" 
AR Path="/5D056C6C/5C0E680F" Ref="Q43"  Part="1" 
AR Path="/5D056C74/5C0E680F" Ref="Q46"  Part="1" 
F 0 "Q1" H 5591 3846 50  0000 L CNN
F 1 "2N3904_SOT-23" H 5591 3755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5600 3725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5400 3800 50  0001 L CNN
	1    5400 3800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904_SOT-23 Q2
U 1 1 5C0E6B6A
P 6600 3800
AR Path="/5D052951/5C0E6B6A" Ref="Q2"  Part="1" 
AR Path="/5D056BDA/5C0E6B6A" Ref="Q5"  Part="1" 
AR Path="/5D056BE3/5C0E6B6A" Ref="Q8"  Part="1" 
AR Path="/5D056BEC/5C0E6B6A" Ref="Q11"  Part="1" 
AR Path="/5D056C14/5C0E6B6A" Ref="Q14"  Part="1" 
AR Path="/5D056C1C/5C0E6B6A" Ref="Q17"  Part="1" 
AR Path="/5D056C24/5C0E6B6A" Ref="Q20"  Part="1" 
AR Path="/5D056C2C/5C0E6B6A" Ref="Q23"  Part="1" 
AR Path="/5D056C38/5C0E6B6A" Ref="Q26"  Part="1" 
AR Path="/5D056C40/5C0E6B6A" Ref="Q29"  Part="1" 
AR Path="/5D056C48/5C0E6B6A" Ref="Q32"  Part="1" 
AR Path="/5D056C50/5C0E6B6A" Ref="Q35"  Part="1" 
AR Path="/5D056C5C/5C0E6B6A" Ref="Q38"  Part="1" 
AR Path="/5D056C64/5C0E6B6A" Ref="Q41"  Part="1" 
AR Path="/5D056C6C/5C0E6B6A" Ref="Q44"  Part="1" 
AR Path="/5D056C74/5C0E6B6A" Ref="Q47"  Part="1" 
F 0 "Q2" H 6791 3846 50  0000 L CNN
F 1 "2N3904_SOT-23" H 6791 3755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6800 3725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6600 3800 50  0001 L CNN
	1    6600 3800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904_SOT-23 Q3
U 1 1 5C0E6C19
P 7650 3800
AR Path="/5D052951/5C0E6C19" Ref="Q3"  Part="1" 
AR Path="/5D056BDA/5C0E6C19" Ref="Q6"  Part="1" 
AR Path="/5D056BE3/5C0E6C19" Ref="Q9"  Part="1" 
AR Path="/5D056BEC/5C0E6C19" Ref="Q12"  Part="1" 
AR Path="/5D056C14/5C0E6C19" Ref="Q15"  Part="1" 
AR Path="/5D056C1C/5C0E6C19" Ref="Q18"  Part="1" 
AR Path="/5D056C24/5C0E6C19" Ref="Q21"  Part="1" 
AR Path="/5D056C2C/5C0E6C19" Ref="Q24"  Part="1" 
AR Path="/5D056C38/5C0E6C19" Ref="Q27"  Part="1" 
AR Path="/5D056C40/5C0E6C19" Ref="Q30"  Part="1" 
AR Path="/5D056C48/5C0E6C19" Ref="Q33"  Part="1" 
AR Path="/5D056C50/5C0E6C19" Ref="Q36"  Part="1" 
AR Path="/5D056C5C/5C0E6C19" Ref="Q39"  Part="1" 
AR Path="/5D056C64/5C0E6C19" Ref="Q42"  Part="1" 
AR Path="/5D056C6C/5C0E6C19" Ref="Q45"  Part="1" 
AR Path="/5D056C74/5C0E6C19" Ref="Q48"  Part="1" 
F 0 "Q3" H 7841 3846 50  0000 L CNN
F 1 "2N3904_SOT-23" H 7841 3755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7850 3725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7650 3800 50  0001 L CNN
	1    7650 3800
	1    0    0    -1  
$EndComp
$Sheet
S 3550 2300 800  700 
U 5C0EF9E5
F0 "PWM Logic" 50
F1 "PWM_logic.sch" 50
$EndSheet
$EndSCHEMATC
