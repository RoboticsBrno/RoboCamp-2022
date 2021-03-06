EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 4750 3250
NoConn ~ 4750 3350
$Comp
L Device:R R?
U 1 1 60100665
P 8200 3750
AR Path="/60100665" Ref="R?"  Part="1" 
AR Path="/600FF353/60100665" Ref="R15"  Part="1" 
F 0 "R15" H 8270 3796 50  0000 L CNN
F 1 "100k" H 8270 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 8130 3750 50  0001 C CNN
F 3 "~" H 8200 3750 50  0001 C CNN
	1    8200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6010066B
P 5300 3750
AR Path="/6010066B" Ref="C?"  Part="1" 
AR Path="/600FF353/6010066B" Ref="C9"  Part="1" 
F 0 "C9" H 5415 3796 50  0000 L CNN
F 1 "10n" H 5415 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 5338 3600 50  0001 C CNN
F 3 "~" H 5300 3750 50  0001 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3600 6000 3600
$Comp
L Device:R R?
U 1 1 60100672
P 8200 3350
AR Path="/60100672" Ref="R?"  Part="1" 
AR Path="/600FF353/60100672" Ref="R14"  Part="1" 
F 0 "R14" H 8270 3396 50  0000 L CNN
F 1 "10k" H 8270 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 8130 3350 50  0001 C CNN
F 3 "~" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3600 8200 3600
Wire Wire Line
	8200 3500 8200 3600
Connection ~ 8200 3600
Wire Wire Line
	6000 3400 5650 3400
Wire Wire Line
	5650 3400 5650 4100
Wire Wire Line
	5650 4100 7150 4100
Wire Wire Line
	7150 4100 7150 3900
Wire Wire Line
	7150 3800 7000 3800
Wire Wire Line
	8200 3900 7150 3900
Connection ~ 7150 3900
Wire Wire Line
	7150 3900 7150 3800
$Comp
L Device:C C?
U 1 1 60100683
P 8200 4050
AR Path="/60100683" Ref="C?"  Part="1" 
AR Path="/600FF353/60100683" Ref="C10"  Part="1" 
F 0 "C10" H 8315 4096 50  0000 L CNN
F 1 "4.7u" H 8315 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 8238 3900 50  0001 C CNN
F 3 "~" H 8200 4050 50  0001 C CNN
	1    8200 4050
	1    0    0    -1  
$EndComp
Connection ~ 8200 3900
Wire Wire Line
	6000 3800 5900 3800
Wire Wire Line
	5900 3800 5900 3050
Wire Wire Line
	5900 3050 6500 3050
Wire Wire Line
	8200 3050 8200 3200
Wire Wire Line
	6500 3200 6500 3050
Connection ~ 6500 3050
Wire Wire Line
	6500 3050 8200 3050
Wire Wire Line
	5900 3050 4950 3050
Connection ~ 5900 3050
Wire Wire Line
	6500 4250 6500 4000
Wire Wire Line
	5300 3900 5300 4250
Wire Wire Line
	5300 4250 6500 4250
Connection ~ 6500 4250
Wire Wire Line
	6500 4250 8000 4250
Wire Wire Line
	5300 4250 4450 4250
Wire Wire Line
	4450 4250 4450 3650
Connection ~ 5300 4250
$Comp
L solderingChallenge-rescue:USB_A-Connector J?
U 1 1 6010069B
P 4450 3250
AR Path="/6010069B" Ref="J?"  Part="1" 
AR Path="/600FF353/6010069B" Ref="J10"  Part="1" 
F 0 "J10" H 4507 3717 50  0000 C CNN
F 1 "USB_A" H 4507 3626 50  0000 C CNN
F 2 "RoboCamp:usb-PCB" H 4600 3200 50  0001 C CNN
F 3 " ~" H 4600 3200 50  0001 C CNN
	1    4450 3250
	1    0    0    -1  
$EndComp
NoConn ~ 4350 3650
Wire Wire Line
	8200 4250 8200 4200
Connection ~ 8000 4250
Wire Wire Line
	8000 4250 8200 4250
Wire Wire Line
	4950 2700 4950 3050
Connection ~ 4950 3050
Wire Wire Line
	4950 3050 4750 3050
Connection ~ 4450 4250
$Comp
L power:PWR_FLAG #FLG?
U 1 1 601006C5
P 4950 2700
AR Path="/601006C5" Ref="#FLG?"  Part="1" 
AR Path="/600FF353/601006C5" Ref="#FLG09"  Part="1" 
F 0 "#FLG09" H 4950 2775 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 2873 50  0000 C CNN
F 2 "" H 4950 2700 50  0001 C CNN
F 3 "~" H 4950 2700 50  0001 C CNN
	1    4950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 601006CC
P 4450 4250
AR Path="/601006CC" Ref="#FLG?"  Part="1" 
AR Path="/600FF353/601006CC" Ref="#FLG010"  Part="1" 
F 0 "#FLG010" H 4450 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 4423 50  0000 C CNN
F 2 "" H 4450 4250 50  0001 C CNN
F 3 "~" H 4450 4250 50  0001 C CNN
	1    4450 4250
	-1   0    0    1   
$EndComp
$Comp
L Timer:LMC555xTP U5
U 1 1 6011669C
P 6500 3600
F 0 "U5" H 6600 4050 50  0000 C CNN
F 1 "LMC555xTP" H 6750 3950 50  0000 C CNN
F 2 "Package_BGA:Texas_DSBGA-8_1.43x1.41mm_Layout3x3_P0.5mm" H 6600 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmc555.pdf" H 6500 3600 50  0001 C CNN
	1    6500 3600
	1    0    0    -1  
$EndComp
Text Label 5100 3050 0    50   ~ 0
VCC
Text Label 4950 4250 0    50   ~ 0
GND
Wire Wire Line
	8000 3400 8000 4250
Wire Wire Line
	7400 3400 7000 3400
$Comp
L Device:R R?
U 1 1 601006A3
P 7850 3400
AR Path="/601006A3" Ref="R?"  Part="1" 
AR Path="/600FF353/601006A3" Ref="R13"  Part="1" 
F 0 "R13" V 7643 3400 50  0000 C CNN
F 1 "330R" V 7734 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 7780 3400 50  0001 C CNN
F 3 "~" H 7850 3400 50  0001 C CNN
	1    7850 3400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 601006AB
P 7550 3400
AR Path="/601006AB" Ref="D?"  Part="1" 
AR Path="/600FF353/601006AB" Ref="D5"  Part="1" 
F 0 "D5" H 7543 3145 50  0000 C CNN
F 1 "LED" H 7543 3236 50  0000 C CNN
F 2 "LED_SMD:LED_0201_0603Metric" H 7550 3400 50  0001 C CNN
F 3 "~" H 7550 3400 50  0001 C CNN
	1    7550 3400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
