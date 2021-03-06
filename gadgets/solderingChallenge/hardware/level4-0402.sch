EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 4600 3550
NoConn ~ 4600 3650
$Comp
L Device:R R?
U 1 1 60103396
P 8050 4050
AR Path="/60103396" Ref="R?"  Part="1" 
AR Path="/600FF0C1/60103396" Ref="R12"  Part="1" 
F 0 "R12" H 8120 4096 50  0000 L CNN
F 1 "100k" H 8120 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7980 4050 50  0001 C CNN
F 3 "~" H 8050 4050 50  0001 C CNN
	1    8050 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6010339C
P 5150 4050
AR Path="/6010339C" Ref="C?"  Part="1" 
AR Path="/600FF0C1/6010339C" Ref="C7"  Part="1" 
F 0 "C7" H 5265 4096 50  0000 L CNN
F 1 "10n" H 5265 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5188 3900 50  0001 C CNN
F 3 "~" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3900 5850 3900
$Comp
L Device:R R?
U 1 1 601033A3
P 8050 3650
AR Path="/601033A3" Ref="R?"  Part="1" 
AR Path="/600FF0C1/601033A3" Ref="R11"  Part="1" 
F 0 "R11" H 8120 3696 50  0000 L CNN
F 1 "10k" H 8120 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7980 3650 50  0001 C CNN
F 3 "~" H 8050 3650 50  0001 C CNN
	1    8050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3900 8050 3900
Wire Wire Line
	8050 3800 8050 3900
Connection ~ 8050 3900
Wire Wire Line
	5850 3700 5500 3700
Wire Wire Line
	5500 3700 5500 4400
Wire Wire Line
	5500 4400 7000 4400
Wire Wire Line
	7000 4400 7000 4200
Wire Wire Line
	7000 4100 6850 4100
Wire Wire Line
	8050 4200 7000 4200
Connection ~ 7000 4200
Wire Wire Line
	7000 4200 7000 4100
$Comp
L Device:C C?
U 1 1 601033B4
P 8050 4350
AR Path="/601033B4" Ref="C?"  Part="1" 
AR Path="/600FF0C1/601033B4" Ref="C8"  Part="1" 
F 0 "C8" H 8165 4396 50  0000 L CNN
F 1 "4.7u" H 8165 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8088 4200 50  0001 C CNN
F 3 "~" H 8050 4350 50  0001 C CNN
	1    8050 4350
	1    0    0    -1  
$EndComp
Connection ~ 8050 4200
Wire Wire Line
	5850 4100 5750 4100
Wire Wire Line
	5750 4100 5750 3350
Wire Wire Line
	5750 3350 6350 3350
Wire Wire Line
	8050 3350 8050 3500
Wire Wire Line
	6350 3500 6350 3350
Connection ~ 6350 3350
Wire Wire Line
	6350 3350 8050 3350
Connection ~ 5750 3350
Wire Wire Line
	6350 4550 6350 4300
Wire Wire Line
	5150 4200 5150 4550
Wire Wire Line
	5150 4550 6350 4550
Connection ~ 6350 4550
Wire Wire Line
	6350 4550 7850 4550
Wire Wire Line
	5150 4550 4300 4550
Wire Wire Line
	4300 4550 4300 3950
Connection ~ 5150 4550
$Comp
L solderingChallenge-rescue:USB_A-Connector J?
U 1 1 601033CC
P 4300 3550
AR Path="/601033CC" Ref="J?"  Part="1" 
AR Path="/600FF0C1/601033CC" Ref="J8"  Part="1" 
F 0 "J8" H 4357 4017 50  0000 C CNN
F 1 "USB_A" H 4357 3926 50  0000 C CNN
F 2 "RoboCamp:usb-PCB" H 4450 3500 50  0001 C CNN
F 3 " ~" H 4450 3500 50  0001 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
NoConn ~ 4200 3950
Wire Wire Line
	8050 4550 8050 4500
$Comp
L Device:R R?
U 1 1 601033D4
P 7700 3700
AR Path="/601033D4" Ref="R?"  Part="1" 
AR Path="/600FF0C1/601033D4" Ref="R10"  Part="1" 
F 0 "R10" V 7493 3700 50  0000 C CNN
F 1 "330R" V 7584 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7630 3700 50  0001 C CNN
F 3 "~" H 7700 3700 50  0001 C CNN
	1    7700 3700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 601033DC
P 7400 3700
AR Path="/601033DC" Ref="D?"  Part="1" 
AR Path="/600FF0C1/601033DC" Ref="D4"  Part="1" 
F 0 "D4" H 7393 3445 50  0000 C CNN
F 1 "LED" H 7393 3536 50  0000 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 7400 3700 50  0001 C CNN
F 3 "~" H 7400 3700 50  0001 C CNN
	1    7400 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 3700 7850 4550
Connection ~ 7850 4550
Wire Wire Line
	7850 4550 8050 4550
Connection ~ 4300 4550
$Comp
L power:PWR_FLAG #FLG?
U 1 1 601033F6
P 5750 3350
AR Path="/601033F6" Ref="#FLG?"  Part="1" 
AR Path="/600FF0C1/601033F6" Ref="#FLG07"  Part="1" 
F 0 "#FLG07" H 5750 3425 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 3523 50  0000 C CNN
F 2 "" H 5750 3350 50  0001 C CNN
F 3 "~" H 5750 3350 50  0001 C CNN
	1    5750 3350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 601033FD
P 4300 4550
AR Path="/601033FD" Ref="#FLG?"  Part="1" 
AR Path="/600FF0C1/601033FD" Ref="#FLG08"  Part="1" 
F 0 "#FLG08" H 4300 4625 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 4723 50  0000 C CNN
F 2 "" H 4300 4550 50  0001 C CNN
F 3 "~" H 4300 4550 50  0001 C CNN
	1    4300 4550
	-1   0    0    1   
$EndComp
$Comp
L Timer:LMC555xMM U4
U 1 1 6011E0EB
P 6350 3900
F 0 "U4" H 6450 4350 50  0000 C CNN
F 1 "LMC555xMM" H 6600 4250 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 7000 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmc555.pdf" H 7200 3500 50  0001 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
Text Label 5150 3350 0    50   ~ 0
VCC
Text Label 4650 4550 0    50   ~ 0
GND
Wire Wire Line
	4600 3350 5750 3350
Wire Wire Line
	6850 3700 7250 3700
$EndSCHEMATC
