EESchema Schematic File Version 4
EELAYER 30 0
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
L power:+12V #PWR025
U 1 1 6136E82D
P 6275 3300
F 0 "#PWR025" H 6275 3150 50  0001 C CNN
F 1 "+12V" H 6290 3473 50  0000 C CNN
F 2 "" H 6275 3300 50  0001 C CNN
F 3 "" H 6275 3300 50  0001 C CNN
	1    6275 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 61370C87
P 6175 3650
F 0 "Q1" H 6379 3696 50  0000 L CNN
F 1 "NMOS" H 6379 3605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6375 3750 50  0001 C CNN
F 3 "~" H 6175 3650 50  0001 C CNN
	1    6175 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 3300 6275 3450
$Comp
L Device:D_Schottky D3
U 1 1 61372223
P 6275 4250
F 0 "D3" V 6229 4330 50  0000 L CNN
F 1 "D_Schottky" V 6320 4330 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 6275 4250 50  0001 C CNN
F 3 "~" H 6275 4250 50  0001 C CNN
	1    6275 4250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 613736F3
P 6275 4500
F 0 "#PWR026" H 6275 4250 50  0001 C CNN
F 1 "GND" H 6280 4327 50  0000 C CNN
F 2 "" H 6275 4500 50  0001 C CNN
F 3 "" H 6275 4500 50  0001 C CNN
	1    6275 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 61375946
P 6575 4050
F 0 "L1" V 6765 4050 50  0000 C CNN
F 1 "L" V 6674 4050 50  0000 C CNN
F 2 "IND_HCTI-150-5.0:IND_HCTI-150-5.0" H 6575 4050 50  0001 C CNN
F 3 "~" H 6575 4050 50  0001 C CNN
	1    6575 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6425 4050 6275 4050
Wire Wire Line
	6275 4050 6275 4100
Wire Wire Line
	7250 4050 7250 4100
Wire Wire Line
	7250 4400 7250 4450
Wire Wire Line
	7250 4050 7625 4050
Connection ~ 7250 4050
Wire Wire Line
	7625 4450 7250 4450
Connection ~ 7250 4450
Text GLabel 7675 3700 2    50   Input ~ 0
V_load
$Comp
L Device:R_Small R11
U 1 1 6137AA0B
P 10250 1200
F 0 "R11" H 10309 1246 50  0000 L CNN
F 1 "56k" H 10309 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 10250 1200 50  0001 C CNN
F 3 "~" H 10250 1200 50  0001 C CNN
	1    10250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 975  10250 1100
$Comp
L Device:R_Small R12
U 1 1 6137C4E4
P 10250 1600
F 0 "R12" H 10309 1646 50  0000 L CNN
F 1 "22k" H 10309 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 10250 1600 50  0001 C CNN
F 3 "~" H 10250 1600 50  0001 C CNN
	1    10250 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6137CD28
P 10250 1800
F 0 "#PWR031" H 10250 1550 50  0001 C CNN
F 1 "GND" H 10255 1627 50  0000 C CNN
F 2 "" H 10250 1800 50  0001 C CNN
F 3 "" H 10250 1800 50  0001 C CNN
	1    10250 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 6137E635
P 9250 1200
F 0 "R7" H 9309 1246 50  0000 L CNN
F 1 "560k" H 9309 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9250 1200 50  0001 C CNN
F 3 "~" H 9250 1200 50  0001 C CNN
	1    9250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 975  9250 1100
Wire Wire Line
	9250 1300 9250 1400
$Comp
L power:GND #PWR028
U 1 1 6137E64C
P 9250 1800
F 0 "#PWR028" H 9250 1550 50  0001 C CNN
F 1 "GND" H 9255 1627 50  0000 C CNN
F 2 "" H 9250 1800 50  0001 C CNN
F 3 "" H 9250 1800 50  0001 C CNN
	1    9250 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR027
U 1 1 6137FB09
P 9250 975
F 0 "#PWR027" H 9250 825 50  0001 C CNN
F 1 "+12V" H 9265 1148 50  0000 C CNN
F 2 "" H 9250 975 50  0001 C CNN
F 3 "" H 9250 975 50  0001 C CNN
	1    9250 975 
	1    0    0    -1  
$EndComp
Text GLabel 9650 1400 2    50   Input ~ 0
V_supply
Wire Wire Line
	9650 1400 9575 1400
Connection ~ 9250 1400
Wire Wire Line
	9250 1400 9250 1500
$Comp
L Device:C_Small C15
U 1 1 61384302
P 9575 1600
F 0 "C15" H 9800 1600 50  0000 R CNN
F 1 "0.1u 16V" H 10000 1675 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9575 1600 50  0001 C CNN
F 3 "~" H 9575 1600 50  0001 C CNN
	1    9575 1600
	1    0    0    1   
$EndComp
$Comp
L power:GNDD #PWR032
U 1 1 61385013
P 10575 1825
F 0 "#PWR032" H 10575 1575 50  0001 C CNN
F 1 "GNDD" H 10579 1670 50  0000 C CNN
F 2 "" H 10575 1825 50  0001 C CNN
F 3 "" H 10575 1825 50  0001 C CNN
	1    10575 1825
	1    0    0    -1  
$EndComp
Text GLabel 10650 1400 2    50   Input ~ 0
load_sense
Wire Wire Line
	6275 4400 6275 4450
Wire Wire Line
	6275 4450 7250 4450
Connection ~ 6275 4450
Wire Wire Line
	6275 4450 6275 4500
$Comp
L Device:R_Small R10
U 1 1 6138FA43
P 7025 4050
F 0 "R10" V 6829 4050 50  0000 C CNN
F 1 "60m" V 6920 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" H 7025 4050 50  0001 C CNN
F 3 "~" H 7025 4050 50  0001 C CNN
	1    7025 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	7125 4050 7250 4050
Wire Wire Line
	6725 4050 6825 4050
Connection ~ 6825 4050
Wire Wire Line
	6825 4050 6925 4050
Wire Wire Line
	7250 4050 7250 3700
$Comp
L Device:D_Schottky D2
U 1 1 613BB138
P 4875 3175
F 0 "D2" H 4875 2958 50  0000 C CNN
F 1 "D_Schottky" H 4875 3049 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 4875 3175 50  0001 C CNN
F 3 "~" H 4875 3175 50  0001 C CNN
	1    4875 3175
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 613B85E8
P 5850 3650
F 0 "R6" V 5700 3650 50  0000 C CNN
F 1 "10" V 5775 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5850 3650 50  0001 C CNN
F 3 "~" H 5850 3650 50  0001 C CNN
	1    5850 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 3550 5400 3175
Wire Wire Line
	5400 3175 5025 3175
Wire Wire Line
	4725 3175 4425 3175
Wire Wire Line
	4425 3175 4425 3550
Wire Wire Line
	4425 3550 4550 3550
Connection ~ 5400 3550
Wire Wire Line
	5400 3750 5400 3850
NoConn ~ 4550 3750
$Comp
L Device:CP_Small C12
U 1 1 613DFD54
P 5400 3650
F 0 "C12" H 5425 3725 50  0000 L CNN
F 1 "10u 50V" H 5425 3575 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5400 3650 50  0001 C CNN
F 3 "~" H 5400 3650 50  0001 C CNN
F 4 "860010672009" H 5400 3650 50  0001 C CNN "Part Number"
	1    5400 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 613DE17F
P 4425 4075
F 0 "#PWR023" H 4425 3825 50  0001 C CNN
F 1 "GND" H 4430 3902 50  0000 C CNN
F 2 "" H 4425 4075 50  0001 C CNN
F 3 "" H 4425 4075 50  0001 C CNN
	1    4425 4075
	1    0    0    -1  
$EndComp
Connection ~ 4425 3550
$Comp
L IR2125:IR2125 U7
U 1 1 613ACD65
P 4900 3750
F 0 "U7" H 4900 4215 50  0000 C CNN
F 1 "IR2125" H 4900 4124 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4850 3900 50  0001 C CNN
F 3 "" H 4850 3900 50  0001 C CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
Text GLabel 4250 3650 0    50   Input ~ 0
PWM
Wire Wire Line
	4250 3650 4550 3650
Wire Wire Line
	5950 3650 5975 3650
Wire Wire Line
	6275 3850 6275 4050
Connection ~ 6275 4050
$Comp
L Device:CP_Small C11
U 1 1 613E072A
P 4425 3650
F 0 "C11" H 4375 3575 50  0000 R CNN
F 1 "10u 50V" H 4400 3750 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4425 3650 50  0001 C CNN
F 3 "~" H 4425 3650 50  0001 C CNN
F 4 "860010672009" H 4425 3650 50  0001 C CNN "Part Number"
	1    4425 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 3750 4425 3850
Connection ~ 4425 3850
Wire Wire Line
	4550 3850 4425 3850
Wire Wire Line
	4425 3850 4425 4075
Wire Wire Line
	5200 3850 5275 3850
Wire Wire Line
	5200 3750 5275 3750
Wire Wire Line
	5275 3750 5275 3850
Connection ~ 5275 3850
Wire Wire Line
	5275 3850 5400 3850
Wire Wire Line
	5200 3550 5400 3550
$Comp
L power:+12V #PWR022
U 1 1 614D1067
P 4425 3125
F 0 "#PWR022" H 4425 2975 50  0001 C CNN
F 1 "+12V" H 4440 3298 50  0000 C CNN
F 2 "" H 4425 3125 50  0001 C CNN
F 3 "" H 4425 3125 50  0001 C CNN
	1    4425 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 3125 4425 3175
Connection ~ 4425 3175
Wire Wire Line
	5200 3650 5750 3650
$Comp
L Device:CP C16
U 1 1 614EA6E8
P 7250 4250
F 0 "C16" H 7000 4250 50  0000 L CNN
F 1 "470u 50V" H 6850 4150 50  0000 L CNN
F 2 "multi_capacitor:multi_cap" H 7288 4100 50  0001 C CNN
F 3 "~" H 7250 4250 50  0001 C CNN
	1    7250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3700 7475 3700
Text Label 7475 3700 2    50   ~ 0
sen_n
Wire Wire Line
	6825 4050 6825 3700
Text Label 7050 3700 2    50   ~ 0
sen_p
Wire Wire Line
	6825 3700 7050 3700
$Comp
L Device:C_Small C3
U 1 1 615DA83F
P 925 1225
F 0 "C3" H 775 1300 50  0000 L CNN
F 1 "100u 50V" H 525 1150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 925 1225 50  0001 C CNN
F 3 "~" H 925 1225 50  0001 C CNN
F 4 "860010675020" H 925 1225 50  0001 C CNN "Part Number"
	1    925  1225
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR05
U 1 1 615DA84D
P 925 925
F 0 "#PWR05" H 925 775 50  0001 C CNN
F 1 "+12V" H 940 1098 50  0000 C CNN
F 2 "" H 925 925 50  0001 C CNN
F 3 "" H 925 925 50  0001 C CNN
	1    925  925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  925  925  1025
$Comp
L power:GND #PWR06
U 1 1 615E8453
P 925 1550
F 0 "#PWR06" H 925 1300 50  0001 C CNN
F 1 "GND" H 925 1375 50  0000 C CNN
F 2 "" H 925 1550 50  0001 C CNN
F 3 "" H 925 1550 50  0001 C CNN
	1    925  1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  1325 925  1425
$Comp
L Device:Opamp_Dual_Generic U2
U 3 1 61642627
P 1350 6825
F 0 "U2" V 1445 6825 50  0000 C CNN
F 1 "OPA2830" V 1354 6825 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1350 6825 50  0001 C CNN
F 3 "~" H 1350 6825 50  0001 C CNN
	3    1350 6825
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR011
U 1 1 616526D5
P 1700 7250
F 0 "#PWR011" H 1700 7000 50  0001 C CNN
F 1 "GNDD" H 1704 7095 50  0000 C CNN
F 2 "" H 1700 7250 50  0001 C CNN
F 3 "" H 1700 7250 50  0001 C CNN
	1    1700 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR08
U 1 1 61660037
P 975 7250
F 0 "#PWR08" H 975 7000 50  0001 C CNN
F 1 "GNDD" H 979 7095 50  0000 C CNN
F 2 "" H 975 7250 50  0001 C CNN
F 3 "" H 975 7250 50  0001 C CNN
	1    975  7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 61661717
P 975 7100
F 0 "C4" H 1150 7100 50  0000 R CNN
F 1 "0.1u 16V" H 1400 7200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 975 7100 50  0001 C CNN
F 3 "~" H 975 7100 50  0001 C CNN
	1    975  7100
	1    0    0    1   
$EndComp
Wire Wire Line
	975  7200 975  7250
Wire Wire Line
	1050 6925 975  6925
Wire Wire Line
	975  6925 975  7000
Wire Wire Line
	975  6725 975  6925
Connection ~ 975  6925
Wire Wire Line
	1650 6925 1700 6925
Wire Wire Line
	1700 6925 1700 7250
Text GLabel 10250 975  1    50   Input ~ 0
V_load
Text Notes 600  600  0    50   ~ 0
Supply voltage (VCC) reservoir, 5V LDO, and VCC/2 refrence voltage
Wire Wire Line
	9575 1825 9575 1700
Wire Wire Line
	9575 1500 9575 1400
Connection ~ 9575 1400
Wire Wire Line
	9575 1400 9250 1400
$Comp
L Device:R_Small R8
U 1 1 6137E641
P 9250 1600
F 0 "R8" H 9309 1646 50  0000 L CNN
F 1 "120k" H 9309 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9250 1600 50  0001 C CNN
F 3 "~" H 9250 1600 50  0001 C CNN
	1    9250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 1400 10575 1400
$Comp
L Device:C_Small C18
U 1 1 615661DB
P 10575 1600
F 0 "C18" H 10800 1600 50  0000 R CNN
F 1 "0.1u 16V" H 11000 1675 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 10575 1600 50  0001 C CNN
F 3 "~" H 10575 1600 50  0001 C CNN
	1    10575 1600
	1    0    0    1   
$EndComp
Wire Wire Line
	10575 1500 10575 1400
Wire Wire Line
	10250 1300 10250 1400
Wire Wire Line
	10575 1400 10250 1400
Connection ~ 10575 1400
Connection ~ 10250 1400
Wire Wire Line
	10250 1400 10250 1500
Wire Wire Line
	9250 1700 9250 1800
$Comp
L power:GNDD #PWR030
U 1 1 615943DC
P 9575 1825
F 0 "#PWR030" H 9575 1575 50  0001 C CNN
F 1 "GNDD" H 9579 1670 50  0000 C CNN
F 2 "" H 9575 1825 50  0001 C CNN
F 3 "" H 9575 1825 50  0001 C CNN
	1    9575 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1700 10250 1800
Wire Wire Line
	10575 1700 10575 1825
$Comp
L power:+12V #PWR07
U 1 1 614CFEEF
P 975 6725
F 0 "#PWR07" H 975 6575 50  0001 C CNN
F 1 "+12V" H 990 6898 50  0000 C CNN
F 2 "" H 975 6725 50  0001 C CNN
F 3 "" H 975 6725 50  0001 C CNN
	1    975  6725
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 617C8E66
P 3150 950
F 0 "#PWR01" H 3150 800 50  0001 C CNN
F 1 "+12V" H 3165 1123 50  0000 C CNN
F 2 "" H 3150 950 50  0001 C CNN
F 3 "" H 3150 950 50  0001 C CNN
	1    3150 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 1150 3875 1600
Wire Wire Line
	3825 1150 3875 1150
Connection ~ 3150 1150
Wire Wire Line
	3150 950  3150 1150
Wire Wire Line
	3150 1150 3150 1250
Wire Wire Line
	3225 1150 3150 1150
Wire Wire Line
	3150 1450 3150 1600
$Comp
L Device:C_Small C1
U 1 1 617C8E55
P 3150 1350
F 0 "C1" H 3325 1350 50  0000 R CNN
F 1 "0.1u 16V" H 3575 1450 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3150 1350 50  0001 C CNN
F 3 "~" H 3150 1350 50  0001 C CNN
	1    3150 1350
	1    0    0    1   
$EndComp
$Comp
L power:GNDD #PWR02
U 1 1 617C8E4B
P 3150 1600
F 0 "#PWR02" H 3150 1350 50  0001 C CNN
F 1 "GNDD" H 3154 1445 50  0000 C CNN
F 2 "" H 3150 1600 50  0001 C CNN
F 3 "" H 3150 1600 50  0001 C CNN
	1    3150 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR010
U 1 1 617C8E41
P 3875 1600
F 0 "#PWR010" H 3875 1350 50  0001 C CNN
F 1 "GNDD" H 3879 1445 50  0000 C CNN
F 2 "" H 3875 1600 50  0001 C CNN
F 3 "" H 3875 1600 50  0001 C CNN
	1    3875 1600
	1    0    0    -1  
$EndComp
Connection ~ 2725 1150
Wire Wire Line
	2725 950  2725 1150
$Comp
L power:+5V #PWR015
U 1 1 615B65BD
P 2725 950
F 0 "#PWR015" H 2725 800 50  0001 C CNN
F 1 "+5V" H 2740 1123 50  0000 C CNN
F 2 "" H 2725 950 50  0001 C CNN
F 3 "" H 2725 950 50  0001 C CNN
	1    2725 950 
	1    0    0    -1  
$EndComp
Connection ~ 1825 1150
Wire Wire Line
	1825 950  1825 1150
$Comp
L power:+12V #PWR09
U 1 1 615B366B
P 1825 950
F 0 "#PWR09" H 1825 800 50  0001 C CNN
F 1 "+12V" H 1840 1123 50  0000 C CNN
F 2 "" H 1825 950 50  0001 C CNN
F 3 "" H 1825 950 50  0001 C CNN
	1    1825 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 1550 2275 1600
$Comp
L power:GNDD #PWR012
U 1 1 615A9FCE
P 2275 1600
F 0 "#PWR012" H 2275 1350 50  0001 C CNN
F 1 "GNDD" H 2279 1445 50  0000 C CNN
F 2 "" H 2275 1600 50  0001 C CNN
F 3 "" H 2275 1600 50  0001 C CNN
	1    2275 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 1550 2725 1550
Connection ~ 2275 1550
Wire Wire Line
	2275 1450 2275 1550
Wire Wire Line
	2725 1550 2725 1450
Wire Wire Line
	1825 1550 2275 1550
Wire Wire Line
	1825 1450 1825 1550
Wire Wire Line
	2725 1150 2725 1250
Wire Wire Line
	2600 1150 2725 1150
Wire Wire Line
	1825 1150 1950 1150
Wire Wire Line
	1825 1250 1825 1150
$Comp
L Device:C_Small C5
U 1 1 61592803
P 1825 1350
F 0 "C5" H 1675 1425 50  0000 L CNN
F 1 "100n 16V" H 1450 1275 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1825 1350 50  0001 C CNN
F 3 "~" H 1825 1350 50  0001 C CNN
	1    1825 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 61590DD3
P 2725 1350
F 0 "C6" H 2575 1425 50  0000 L CNN
F 1 "10u 16V" H 2375 1275 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2725 1350 50  0001 C CNN
F 3 "~" H 2725 1350 50  0001 C CNN
	1    2725 1350
	1    0    0    -1  
$EndComp
Text GLabel 8650 1175 1    50   Input ~ 0
Avg_voltage
$Comp
L power:GNDD #PWR024
U 1 1 61B769A3
P 8650 1825
F 0 "#PWR024" H 8650 1575 50  0001 C CNN
F 1 "GNDD" H 8654 1670 50  0000 C CNN
F 2 "" H 8650 1825 50  0001 C CNN
F 3 "" H 8650 1825 50  0001 C CNN
	1    8650 1825
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 61B76D37
P 8650 1500
F 0 "C13" H 8875 1500 50  0000 R CNN
F 1 "0.1u 16V" H 9075 1575 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8650 1500 50  0001 C CNN
F 3 "~" H 8650 1500 50  0001 C CNN
	1    8650 1500
	1    0    0    1   
$EndComp
Wire Wire Line
	8650 1600 8650 1825
Wire Wire Line
	8650 1175 8650 1400
$Comp
L LD1117V50:LD1117V50 U4
U 1 1 61501185
P 2275 1175
F 0 "U4" H 2275 1462 60  0000 C CNN
F 1 "LD1117V50" H 2275 1356 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2275 1350 60  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 1900 1250 60  0001 C CNN
	1    2275 1175
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Quad_Generic U1
U 5 1 6161F132
P 3525 1250
F 0 "U1" V 3200 1250 50  0000 C CNN
F 1 "AMP from lab" V 3291 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3525 1250 50  0001 C CNN
F 3 "~" H 3525 1250 50  0001 C CNN
	5    3525 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	8975 3100 9100 3100
Text GLabel 8975 3100 0    50   Input ~ 0
Avg_voltage
NoConn ~ 9100 2700
Wire Wire Line
	8975 3600 9100 3600
Wire Wire Line
	8975 3500 9100 3500
Text GLabel 8975 3600 0    50   Input ~ 0
SCL
Text GLabel 8975 3500 0    50   Input ~ 0
SDA
Wire Wire Line
	8975 2900 9100 2900
Wire Wire Line
	8975 3000 9100 3000
Connection ~ 10950 3300
Wire Wire Line
	10950 2700 10950 3300
Wire Wire Line
	8975 3700 9100 3700
Text GLabel 8975 3700 0    50   Input ~ 0
PWM
Text GLabel 8975 2900 0    50   Input ~ 0
load_sense
NoConn ~ 10700 2800
NoConn ~ 10700 2900
NoConn ~ 10700 3000
NoConn ~ 10700 3100
NoConn ~ 10700 3200
NoConn ~ 10700 3400
NoConn ~ 10700 3500
NoConn ~ 10700 3600
NoConn ~ 10700 3700
NoConn ~ 10700 3800
NoConn ~ 10700 3900
NoConn ~ 10700 4000
NoConn ~ 10700 4100
NoConn ~ 10700 4200
NoConn ~ 10700 4300
NoConn ~ 10700 4400
NoConn ~ 10700 4500
NoConn ~ 9100 4400
NoConn ~ 9100 4300
NoConn ~ 9100 4200
NoConn ~ 9100 4100
NoConn ~ 9100 3900
NoConn ~ 9100 3800
NoConn ~ 9100 3400
NoConn ~ 9100 3300
NoConn ~ 9100 3200
Text GLabel 8975 3000 0    50   Input ~ 0
V_supply
NoConn ~ 9100 2800
Wire Wire Line
	8850 4000 9100 4000
Wire Wire Line
	8850 4050 8850 4000
$Comp
L power:GNDD #PWR017
U 1 1 61364069
P 8850 4050
F 0 "#PWR017" H 8850 3800 50  0001 C CNN
F 1 "GNDD" H 8854 3895 50  0000 C CNN
F 2 "" H 8850 4050 50  0001 C CNN
F 3 "" H 8850 4050 50  0001 C CNN
	1    8850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3300 10950 3350
Wire Wire Line
	10700 3300 10950 3300
$Comp
L power:GNDD #PWR021
U 1 1 613620C9
P 10950 3350
F 0 "#PWR021" H 10950 3100 50  0001 C CNN
F 1 "GNDD" H 10954 3195 50  0000 C CNN
F 2 "" H 10950 3350 50  0001 C CNN
F 3 "" H 10950 3350 50  0001 C CNN
	1    10950 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 2700 10950 2700
$Comp
L ESP32-DEVKITC-32D:ESP32-DEVKITC-32D U6
U 1 1 6135B32C
P 9900 3600
F 0 "U6" H 9900 4767 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 9900 4676 50  0000 C CNN
F 2 "MODULE_ESP32-DEVKITC-32D:MODULE_ESP32-DEVKITC-32D" H 9900 3600 50  0001 L BNN
F 3 "" H 9900 3600 50  0001 L BNN
F 4 "Espressif Systems" H 9900 3600 50  0001 L BNN "MANUFACTURER"
F 5 "4" H 9900 3600 50  0001 L BNN "PARTREV"
	1    9900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3850 6275 3850
Connection ~ 5400 3850
Connection ~ 6275 3850
$Comp
L Device:R_Small R5
U 1 1 6179FB42
P 1775 5700
F 0 "R5" V 1700 5700 50  0000 C CNN
F 1 "16k" V 1875 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 1775 5700 50  0001 C CNN
F 3 "~" H 1775 5700 50  0001 C CNN
F 4 "RR0816P-163-D" V 1775 5700 50  0001 C CNN "Part Number"
	1    1775 5700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C10
U 1 1 617A0393
P 2025 5850
F 0 "C10" H 2250 5850 50  0000 R CNN
F 1 "1u 16V" H 2375 5950 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2025 5850 50  0001 C CNN
F 3 "~" H 2025 5850 50  0001 C CNN
	1    2025 5850
	1    0    0    1   
$EndComp
Wire Wire Line
	1525 5700 1675 5700
Wire Wire Line
	1875 5700 2025 5700
Wire Wire Line
	2025 5700 2025 5750
$Comp
L power:GNDD #PWR020
U 1 1 617B133A
P 2025 6000
F 0 "#PWR020" H 2025 5750 50  0001 C CNN
F 1 "GNDD" H 2029 5845 50  0000 C CNN
F 2 "" H 2025 6000 50  0001 C CNN
F 3 "" H 2025 6000 50  0001 C CNN
	1    2025 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2025 5950 2025 6000
Wire Wire Line
	2025 5700 2225 5700
Connection ~ 2025 5700
Text GLabel 2225 5700 2    50   Input ~ 0
Avg_voltage
Text Notes 1100 5550 0    50   ~ 0
First order passive low pass filter\nOutputs the average ripple voltage\n10Hz cutoff frequency
Wire Wire Line
	9450 5475 9575 5475
Text GLabel 9450 5475 0    50   Input ~ 0
V_ref
Wire Wire Line
	9325 5675 9275 5675
Wire Wire Line
	9275 5675 9275 5700
$Comp
L power:GNDD #PWR029
U 1 1 616C8830
P 9275 5925
F 0 "#PWR029" H 9275 5675 50  0001 C CNN
F 1 "GNDD" H 9279 5770 50  0000 C CNN
F 2 "" H 9275 5925 50  0001 C CNN
F 3 "" H 9275 5925 50  0001 C CNN
	1    9275 5925
	1    0    0    -1  
$EndComp
Wire Wire Line
	9275 5900 9275 5925
Wire Wire Line
	9525 5675 9575 5675
$Comp
L Device:R_Small R9
U 1 1 616B1590
P 9425 5675
F 0 "R9" V 9350 5675 50  0000 C CNN
F 1 "2k" V 9500 5675 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9425 5675 50  0001 C CNN
F 3 "~" H 9425 5675 50  0001 C CNN
F 4 "RR0816P-163-D" V 9425 5675 50  0001 C CNN "Part Number"
	1    9425 5675
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C14
U 1 1 616AE0ED
P 9275 5800
F 0 "C14" H 9025 5800 50  0000 L CNN
F 1 "0.1u 16V" H 8900 5725 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9275 5800 50  0001 C CNN
F 3 "~" H 9275 5800 50  0001 C CNN
	1    9275 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5375 9575 5375
Text GLabel 9450 5375 0    50   Input ~ 0
Pk_voltage
Wire Wire Line
	10225 5675 10325 5675
Wire Wire Line
	10225 5575 10325 5575
Wire Wire Line
	10725 5000 10725 5025
Wire Wire Line
	10225 5475 10425 5475
Text GLabel 10325 5675 2    50   Input ~ 0
SCL
Text GLabel 10325 5575 2    50   Input ~ 0
SDA
$Comp
L power:+5V #PWR033
U 1 1 615BB653
P 10725 5000
F 0 "#PWR033" H 10725 4850 50  0001 C CNN
F 1 "+5V" H 10740 5173 50  0000 C CNN
F 2 "" H 10725 5000 50  0001 C CNN
F 3 "" H 10725 5000 50  0001 C CNN
	1    10725 5000
	1    0    0    -1  
$EndComp
Connection ~ 10725 5275
Wire Wire Line
	10725 5225 10725 5275
Connection ~ 10425 5275
Wire Wire Line
	10325 5275 10425 5275
Wire Wire Line
	10325 5375 10325 5275
Wire Wire Line
	10225 5375 10325 5375
Connection ~ 10425 5475
Wire Wire Line
	10425 5475 10725 5475
Wire Wire Line
	10425 5275 10725 5275
$Comp
L Device:C_Small C19
U 1 1 6154A090
P 10725 5375
F 0 "C19" H 10800 5375 50  0000 L CNN
F 1 "4.7u 16V" H 10600 5225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 10725 5375 50  0001 C CNN
F 3 "~" H 10725 5375 50  0001 C CNN
	1    10725 5375
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 61542A51
P 10425 5375
F 0 "C17" H 10500 5375 50  0000 L CNN
F 1 "0.1u 16V" H 10300 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 10425 5375 50  0001 C CNN
F 3 "~" H 10425 5375 50  0001 C CNN
	1    10425 5375
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 6153CA4F
P 10725 5125
F 0 "R14" V 10529 5125 50  0000 C CNN
F 1 "5" V 10620 5125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 10725 5125 50  0001 C CNN
F 3 "~" H 10725 5125 50  0001 C CNN
	1    10725 5125
	-1   0    0    1   
$EndComp
$Comp
L MAX11644:MAX11644 U8
U 1 1 61537D6B
P 9900 5525
F 0 "U8" H 9900 5940 50  0000 C CNN
F 1 "MAX11644" H 9900 5849 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 9575 5900 50  0001 C CNN
F 3 "" H 9575 5900 50  0001 C CNN
	1    9900 5525
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Quad_Generic U1
U 1 1 6162967B
P 5000 1200
F 0 "U1" H 5000 850 50  0000 C CNN
F 1 "AMP from lab" H 5000 950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5000 1200 50  0001 C CNN
F 3 "~" H 5000 1200 50  0001 C CNN
	1    5000 1200
	1    0    0    1   
$EndComp
Wire Wire Line
	5375 1500 5375 1600
Wire Wire Line
	5375 1200 5375 1300
$Comp
L power:GNDD #PWR016
U 1 1 6193F07B
P 5375 1600
F 0 "#PWR016" H 5375 1350 50  0001 C CNN
F 1 "GNDD" H 5379 1445 50  0000 C CNN
F 2 "" H 5375 1600 50  0001 C CNN
F 3 "" H 5375 1600 50  0001 C CNN
	1    5375 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 61934821
P 5375 1400
F 0 "C8" H 5550 1400 50  0000 R CNN
F 1 "0.1u 16V" H 5800 1500 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5375 1400 50  0001 C CNN
F 3 "~" H 5375 1400 50  0001 C CNN
	1    5375 1400
	1    0    0    1   
$EndComp
Text GLabel 5575 1200 2    50   Input ~ 0
V_ref
Connection ~ 5375 1200
Wire Wire Line
	5375 1200 5575 1200
Wire Wire Line
	4350 1300 4350 1350
Connection ~ 4350 1300
Wire Wire Line
	4700 1300 4350 1300
Wire Wire Line
	5375 1200 5300 1200
Wire Wire Line
	5375 750  5375 1200
Wire Wire Line
	4600 750  5375 750 
Wire Wire Line
	4600 1100 4600 750 
Wire Wire Line
	4700 1100 4600 1100
Wire Wire Line
	4350 1250 4350 1300
$Comp
L Device:R_Small R2
U 1 1 614D2EB3
P 4350 1450
F 0 "R2" H 4200 1525 50  0000 L CNN
F 1 "100k" H 4125 1425 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4350 1450 50  0001 C CNN
F 3 "~" H 4350 1450 50  0001 C CNN
	1    4350 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR014
U 1 1 614DC645
P 4350 1600
F 0 "#PWR014" H 4350 1350 50  0001 C CNN
F 1 "GNDD" H 4354 1445 50  0000 C CNN
F 2 "" H 4350 1600 50  0001 C CNN
F 3 "" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1550 4350 1600
$Comp
L power:+12V #PWR013
U 1 1 614D084A
P 4350 950
F 0 "#PWR013" H 4350 800 50  0001 C CNN
F 1 "+12V" H 4365 1123 50  0000 C CNN
F 2 "" H 4350 950 50  0001 C CNN
F 3 "" H 4350 950 50  0001 C CNN
	1    4350 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 950  4350 1050
$Comp
L Device:R_Small R1
U 1 1 614FDB3E
P 4350 1150
F 0 "R1" H 4200 1225 50  0000 L CNN
F 1 "100k" H 4125 1125 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4350 1150 50  0001 C CNN
F 3 "~" H 4350 1150 50  0001 C CNN
	1    4350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1025 4800 2075 4800
Connection ~ 1025 4800
Wire Wire Line
	1025 4875 1025 4800
Wire Wire Line
	2075 4500 2075 4800
Wire Wire Line
	1025 4750 1025 4800
Connection ~ 1025 4500
Wire Wire Line
	1025 4550 1025 4500
$Comp
L Device:C_Small C2
U 1 1 614BE6E3
P 1025 4650
F 0 "C2" H 925 4650 50  0000 R CNN
F 1 "0.1u 16V" H 950 4750 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1025 4650 50  0001 C CNN
F 3 "~" H 1025 4650 50  0001 C CNN
	1    1025 4650
	1    0    0    1   
$EndComp
Text Notes 600  3650 0    50   ~ 0
Current shunt voltage amplifier\nVoltage Gain Sense_avg = 50\nVoltage Gain Sense_ripple = 100\nShunt Resistance 60mOhms\n
Text Label 725  4400 0    50   ~ 0
sen_n
Text Label 725  4300 0    50   ~ 0
sen_p
Wire Wire Line
	1125 4400 725  4400
Wire Wire Line
	1125 4300 725  4300
$Comp
L power:GNDD #PWR04
U 1 1 6152F858
P 1025 4875
F 0 "#PWR04" H 1025 4625 50  0001 C CNN
F 1 "GNDD" H 1029 4720 50  0000 C CNN
F 2 "" H 1025 4875 50  0001 C CNN
F 3 "" H 1025 4875 50  0001 C CNN
	1    1025 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1025 4200 1025 4500
Connection ~ 1025 4200
Wire Wire Line
	1025 4000 1025 4200
Wire Wire Line
	1025 4500 1125 4500
Wire Wire Line
	1025 4200 1125 4200
$Comp
L power:+5V #PWR03
U 1 1 6153D27E
P 1025 4000
F 0 "#PWR03" H 1025 3850 50  0001 C CNN
F 1 "+5V" H 1040 4173 50  0000 C CNN
F 2 "" H 1025 4000 50  0001 C CNN
F 3 "" H 1025 4000 50  0001 C CNN
	1    1025 4000
	1    0    0    -1  
$EndComp
Text GLabel 3125 4575 2    50   Input ~ 0
Sense_avg
Connection ~ 2075 4500
Wire Wire Line
	2075 4400 2075 4500
Wire Wire Line
	2025 4400 2075 4400
Wire Wire Line
	2025 4500 2075 4500
NoConn ~ 2025 4200
$Comp
L LT1999-50:LT1999MPMS8-50-PBF U3
U 1 1 61526A78
P 1575 4350
F 0 "U3" H 1575 4825 60  0000 C CNN
F 1 "LT1999-50" H 1575 4725 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2200 4625 60  0001 C CNN
F 3 "" H 1575 4350 60  0000 C CNN
	1    1575 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4200 3050 3725
$Comp
L Device:R_Small R15
U 1 1 61574C4B
P 2175 3725
F 0 "R15" V 2025 3725 50  0000 C CNN
F 1 "10k" V 2100 3725 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2175 3725 50  0001 C CNN
F 3 "~" H 2175 3725 50  0001 C CNN
F 4 "RR0816P-163-D" V 2175 3725 50  0001 C CNN "Part Number"
	1    2175 3725
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 61574C56
P 2675 3725
F 0 "R16" V 2525 3725 50  0000 C CNN
F 1 "10k" V 2600 3725 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2675 3725 50  0001 C CNN
F 3 "~" H 2675 3725 50  0001 C CNN
F 4 "RR0816P-163-D" V 2675 3725 50  0001 C CNN "Part Number"
	1    2675 3725
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3725 2775 3725
Wire Wire Line
	2575 3725 2325 3725
Wire Wire Line
	2975 4200 3050 4200
Wire Wire Line
	2325 4100 2375 4100
$Comp
L Device:Opamp_Dual_Generic U2
U 2 1 615B5B1E
P 2675 4200
F 0 "U2" H 2675 3833 50  0000 C CNN
F 1 "OPA2830" H 2675 3924 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2675 4200 50  0001 C CNN
F 3 "~" H 2675 4200 50  0001 C CNN
	2    2675 4200
	1    0    0    1   
$EndComp
Text GLabel 1525 5700 0    50   Input ~ 0
Sense_avg
Text GLabel 3125 4200 2    50   Input ~ 0
Sense_ripple
Wire Wire Line
	3050 4200 3125 4200
Connection ~ 3050 4200
Wire Wire Line
	2200 4575 2200 4300
Wire Wire Line
	2200 4300 2375 4300
Wire Wire Line
	2025 4300 2200 4300
Connection ~ 2200 4300
Wire Wire Line
	2325 3725 2325 4100
$Comp
L power:GNDD #PWR0101
U 1 1 61823953
P 2000 3850
F 0 "#PWR0101" H 2000 3600 50  0001 C CNN
F 1 "GNDD" H 2004 3695 50  0000 C CNN
F 2 "" H 2000 3850 50  0001 C CNN
F 3 "" H 2000 3850 50  0001 C CNN
	1    2000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 3725 2325 3725
Connection ~ 2325 3725
Wire Wire Line
	2075 3725 2000 3725
Wire Wire Line
	2000 3725 2000 3850
Wire Wire Line
	3125 4575 2200 4575
Wire Wire Line
	5300 6325 6025 6325
$Comp
L Device:C_Small C9
U 1 1 616E1E84
P 4975 7050
F 0 "C9" H 4950 6975 50  0000 R CNN
F 1 "100n 16V" H 4950 7125 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4975 7050 50  0001 C CNN
F 3 "~" H 4975 7050 50  0001 C CNN
	1    4975 7050
	1    0    0    1   
$EndComp
Wire Wire Line
	4975 7150 4975 7250
Wire Wire Line
	4975 6850 4975 6950
Wire Wire Line
	4975 7250 5125 7250
Wire Wire Line
	4975 6850 5275 6850
Wire Wire Line
	4975 6850 4475 6850
Connection ~ 4975 6850
$Comp
L Device:R_Small R4
U 1 1 616F0891
P 5275 7050
F 0 "R4" H 5175 7125 50  0000 C CNN
F 1 "1M" H 5175 7025 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5275 7050 50  0001 C CNN
F 3 "~" H 5275 7050 50  0001 C CNN
	1    5275 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5275 7250 5275 7150
Wire Wire Line
	5275 6850 5275 6950
Wire Wire Line
	5125 7250 5275 7250
Connection ~ 5275 6850
Wire Wire Line
	5275 6850 5350 6850
$Comp
L power:GNDD #PWR019
U 1 1 616EBE0D
P 5125 7350
F 0 "#PWR019" H 5125 7100 50  0001 C CNN
F 1 "GNDD" H 5129 7195 50  0000 C CNN
F 2 "" H 5125 7350 50  0001 C CNN
F 3 "" H 5125 7350 50  0001 C CNN
	1    5125 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 7350 5125 7250
Connection ~ 5125 7250
Wire Wire Line
	5300 6325 5300 6650
Wire Wire Line
	5300 6650 5350 6650
Text GLabel 6125 6750 2    50   Input ~ 0
Pk_voltage
Connection ~ 6025 6750
Wire Wire Line
	6025 6750 6125 6750
Wire Wire Line
	5950 6750 6025 6750
Wire Wire Line
	6025 6750 6025 6325
$Comp
L Device:Opamp_Quad_Generic U1
U 2 1 6162B04C
P 5650 6750
F 0 "U1" H 5650 6425 50  0000 C CNN
F 1 "AMP from lab" H 5650 6500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5650 6750 50  0001 C CNN
F 3 "~" H 5650 6750 50  0001 C CNN
	2    5650 6750
	1    0    0    1   
$EndComp
NoConn ~ 4625 7000
$Comp
L Device:R_POT RV1
U 1 1 614FFFF3
P 4475 7000
F 0 "RV1" V 4360 7000 50  0000 C CNN
F 1 "100" V 4269 7000 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3266Y_Vertical" H 4475 7000 50  0001 C CNN
F 3 "~" H 4475 7000 50  0001 C CNN
	1    4475 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3025 6675 3025 6775
Text GLabel 3025 6675 1    50   Input ~ 0
V_ref
Wire Wire Line
	3025 7100 3300 7100
Connection ~ 3025 7100
Wire Wire Line
	3025 6975 3025 7100
$Comp
L Device:R_Small R3
U 1 1 6195B525
P 3025 6875
F 0 "R3" H 2825 6950 50  0000 L CNN
F 1 "10k" H 2825 6850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3025 6875 50  0001 C CNN
F 3 "~" H 3025 6875 50  0001 C CNN
	1    3025 6875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7100 3025 7100
Wire Wire Line
	2600 7100 2700 7100
$Comp
L Device:C_Small C7
U 1 1 614EAD80
P 2800 7100
F 0 "C7" V 2850 7050 50  0000 R CNN
F 1 "100u 16V" V 2925 7300 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2800 7100 50  0001 C CNN
F 3 "~" H 2800 7100 50  0001 C CNN
F 4 "860020374012" V 2800 7100 50  0001 C CNN "Part Number"
	1    2800 7100
	0    -1   1    0   
$EndComp
Text Notes 3225 6350 0    50   ~ 0
Ripple peak voltage detector.\nOutputs the ripple peak voltage
Text GLabel 2600 7100 0    50   Input ~ 0
Sense_ripple
Wire Wire Line
	4275 7000 4325 7000
Connection ~ 4275 7000
Wire Wire Line
	3250 6900 3300 6900
Wire Wire Line
	3250 6525 3250 6900
Wire Wire Line
	4275 6525 3250 6525
Wire Wire Line
	4275 7000 4275 6525
Wire Wire Line
	4225 7000 4275 7000
Wire Wire Line
	3900 7000 3925 7000
$Comp
L Diode:1N4148W D1
U 1 1 616A906E
P 4075 7000
F 0 "D1" H 4075 6783 50  0000 C CNN
F 1 "1N4148W" H 4075 6874 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4075 6825 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4075 7000 50  0001 C CNN
	1    4075 7000
	-1   0    0    1   
$EndComp
$Comp
L Device:Opamp_Dual_Generic U2
U 1 1 61640CC8
P 3600 7000
F 0 "U2" H 3600 6633 50  0000 C CNN
F 1 "OPA2830" H 3600 6724 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3600 7000 50  0001 C CNN
F 3 "~" H 3600 7000 50  0001 C CNN
	1    3600 7000
	1    0    0    1   
$EndComp
Wire Wire Line
	7675 3700 7625 3700
Wire Wire Line
	7625 3700 7625 4050
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6194385E
P 1175 925
F 0 "H2" H 1275 974 50  0000 L CNN
F 1 "VCC_IN" H 1075 1100 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad_Via" H 1175 925 50  0001 C CNN
F 3 "~" H 1175 925 50  0001 C CNN
	1    1175 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 1025 925  1025
Connection ~ 925  1025
Wire Wire Line
	925  1025 925  1125
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 6194FEB1
P 1150 1525
F 0 "H1" H 1050 1575 50  0000 R CNN
F 1 "GND_IN" H 1250 1725 50  0000 R CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad_Via" H 1150 1525 50  0001 C CNN
F 3 "~" H 1150 1525 50  0001 C CNN
	1    1150 1525
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 1425 925  1425
Connection ~ 925  1425
Wire Wire Line
	925  1425 925  1550
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 6198A912
P 7725 4050
F 0 "H3" V 7600 4150 50  0000 R CNN
F 1 "LOAD +" V 7875 4300 50  0000 R CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad_Via" H 7725 4050 50  0001 C CNN
F 3 "~" H 7725 4050 50  0001 C CNN
	1    7725 4050
	0    1    1    0   
$EndComp
Connection ~ 7625 4050
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 6198BF13
P 7725 4450
F 0 "H4" V 7600 4550 50  0000 R CNN
F 1 "LOAD -" V 7875 4700 50  0000 R CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad_Via" H 7725 4450 50  0001 C CNN
F 3 "~" H 7725 4450 50  0001 C CNN
	1    7725 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 4475 8850 4500
Wire Wire Line
	8850 4500 9100 4500
$Comp
L power:+5V #PWR018
U 1 1 6155D00D
P 8850 4475
F 0 "#PWR018" H 8850 4325 50  0001 C CNN
F 1 "+5V" H 8865 4648 50  0000 C CNN
F 2 "" H 8850 4475 50  0001 C CNN
F 3 "" H 8850 4475 50  0001 C CNN
	1    8850 4475
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT1
U 1 1 61615149
P 1325 2350
F 0 "NT1" H 1325 2531 50  0000 C CNN
F 1 "Net-Tie_2" H 1325 2440 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad2.0mm" H 1325 2350 50  0001 C CNN
F 3 "~" H 1325 2350 50  0001 C CNN
	1    1325 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61616520
P 1100 2375
F 0 "#PWR0102" H 1100 2125 50  0001 C CNN
F 1 "GND" H 1100 2200 50  0000 C CNN
F 2 "" H 1100 2375 50  0001 C CNN
F 3 "" H 1100 2375 50  0001 C CNN
	1    1100 2375
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0103
U 1 1 616168CA
P 1550 2375
F 0 "#PWR0103" H 1550 2125 50  0001 C CNN
F 1 "GNDD" H 1554 2220 50  0000 C CNN
F 2 "" H 1550 2375 50  0001 C CNN
F 3 "" H 1550 2375 50  0001 C CNN
	1    1550 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1225 2350 1100 2350
Wire Wire Line
	1100 2350 1100 2375
Wire Wire Line
	1425 2350 1550 2350
Wire Wire Line
	1550 2350 1550 2375
$EndSCHEMATC
