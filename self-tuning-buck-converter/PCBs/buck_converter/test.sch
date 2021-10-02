EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Device:R_Small R?
U 1 1 6159082A
P 9375 1725
F 0 "R?" V 9300 1725 50  0000 C CNN
F 1 "16k" V 9475 1725 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9375 1725 50  0001 C CNN
F 3 "~" H 9375 1725 50  0001 C CNN
F 4 "RR0816P-163-D" V 9375 1725 50  0001 C CNN "Part Number"
	1    9375 1725
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61590830
P 9625 1875
F 0 "C?" H 9850 1875 50  0000 R CNN
F 1 "1u 16V" H 9975 1975 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9625 1875 50  0001 C CNN
F 3 "~" H 9625 1875 50  0001 C CNN
	1    9625 1875
	1    0    0    1   
$EndComp
Wire Wire Line
	9125 1725 9275 1725
Wire Wire Line
	9475 1725 9625 1725
Wire Wire Line
	9625 1725 9625 1775
$Comp
L power:GNDD #PWR?
U 1 1 61590839
P 9625 2025
F 0 "#PWR?" H 9625 1775 50  0001 C CNN
F 1 "GNDD" H 9629 1870 50  0000 C CNN
F 2 "" H 9625 2025 50  0001 C CNN
F 3 "" H 9625 2025 50  0001 C CNN
	1    9625 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	9625 1975 9625 2025
Wire Wire Line
	9625 1725 9825 1725
Connection ~ 9625 1725
Text GLabel 9825 1725 2    50   Input ~ 0
Avg_voltage
Text Notes 8950 1525 0    59   ~ 0
First order passive low pass filter\nOutputs the average ripple voltage\n10Hz cutoff frequency
Text GLabel 9125 1725 0    50   Input ~ 0
Sense_out
Wire Wire Line
	4925 1300 5650 1300
$Comp
L Device:C_Small C?
U 1 1 61590846
P 4800 2025
F 0 "C?" H 4775 1950 50  0000 R CNN
F 1 "100n 16V" H 4775 2100 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4800 2025 50  0001 C CNN
F 3 "~" H 4800 2025 50  0001 C CNN
	1    4800 2025
	1    0    0    1   
$EndComp
Wire Wire Line
	4925 1300 4925 1625
Wire Wire Line
	4925 1625 4975 1625
Text GLabel 5750 1725 2    50   Input ~ 0
Pk_voltage
Connection ~ 5650 1725
Wire Wire Line
	5650 1725 5750 1725
Wire Wire Line
	5575 1725 5650 1725
Wire Wire Line
	5650 1725 5650 1300
$Comp
L Device:Opamp_Quad_Generic U?
U 2 1 6159086C
P 5275 1725
F 0 "U?" H 5275 1400 50  0000 C CNN
F 1 "OPAMP" H 5275 1475 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5275 1725 50  0001 C CNN
F 3 "~" H 5275 1725 50  0001 C CNN
	2    5275 1725
	1    0    0    1   
$EndComp
Wire Wire Line
	3025 1500 3025 1600
Text GLabel 3025 1500 1    50   Input ~ 0
V_ref
Wire Wire Line
	3025 1925 3300 1925
Connection ~ 3025 1925
Wire Wire Line
	3025 1800 3025 1925
$Comp
L Device:R_Small R?
U 1 1 6159087E
P 3025 1700
F 0 "R?" H 2825 1775 50  0000 L CNN
F 1 "10k" H 2825 1675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3025 1700 50  0001 C CNN
F 3 "~" H 3025 1700 50  0001 C CNN
	1    3025 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1925 3025 1925
Wire Wire Line
	2600 1925 2700 1925
$Comp
L Device:C_Small C?
U 1 1 61590887
P 2800 1925
F 0 "C?" V 2850 1875 50  0000 R CNN
F 1 "100u 16V" V 2925 2125 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2800 1925 50  0001 C CNN
F 3 "~" H 2800 1925 50  0001 C CNN
F 4 "860020374012" V 2800 1925 50  0001 C CNN "Part Number"
	1    2800 1925
	0    -1   1    0   
$EndComp
Text GLabel 2600 1925 0    50   Input ~ 0
Sense_ripple
Wire Wire Line
	4275 1825 4425 1825
Connection ~ 4275 1825
Wire Wire Line
	3250 1725 3300 1725
Wire Wire Line
	3250 1350 3250 1725
Wire Wire Line
	4275 1350 3250 1350
Wire Wire Line
	4275 1825 4275 1350
Wire Wire Line
	4225 1825 4275 1825
Wire Wire Line
	3900 1825 3925 1825
$Comp
L Diode:1N4148W D?
U 1 1 61590897
P 4075 1825
F 0 "D?" H 4075 1608 50  0000 C CNN
F 1 "DIODE" H 4075 1699 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4075 1650 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4075 1825 50  0001 C CNN
	1    4075 1825
	-1   0    0    1   
$EndComp
$Comp
L Device:Opamp_Dual_Generic U?
U 1 1 6159089D
P 3600 1825
F 0 "U?" H 3600 1458 50  0000 C CNN
F 1 "OPAMP" H 3600 1549 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3600 1825 50  0001 C CNN
F 3 "~" H 3600 1825 50  0001 C CNN
	1    3600 1825
	1    0    0    1   
$EndComp
Wire Wire Line
	4625 1825 4800 1825
Wire Wire Line
	4800 1825 4800 1925
$Comp
L power:GNDD #PWR?
U 1 1 6159085D
P 4800 2200
F 0 "#PWR?" H 4800 1950 50  0001 C CNN
F 1 "GNDD" H 4804 2045 50  0000 C CNN
F 2 "" H 4800 2200 50  0001 C CNN
F 3 "" H 4800 2200 50  0001 C CNN
	1    4800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2125 4800 2200
Wire Wire Line
	4800 1825 4975 1825
Connection ~ 4800 1825
Wire Wire Line
	2975 3200 2975 3300
Text GLabel 2975 3200 1    50   Input ~ 0
V_ref
Wire Wire Line
	2975 3625 3250 3625
Connection ~ 2975 3625
Wire Wire Line
	2975 3500 2975 3625
$Comp
L Device:R_Small R?
U 1 1 6159ECF2
P 2975 3400
F 0 "R?" H 2775 3475 50  0000 L CNN
F 1 "10k" H 2775 3375 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2975 3400 50  0001 C CNN
F 3 "~" H 2975 3400 50  0001 C CNN
	1    2975 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3625 2975 3625
Wire Wire Line
	2550 3625 2650 3625
$Comp
L Device:C_Small C?
U 1 1 6159ECFF
P 2750 3625
F 0 "C?" V 2800 3575 50  0000 R CNN
F 1 "100u 16V" V 2875 3825 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2750 3625 50  0001 C CNN
F 3 "~" H 2750 3625 50  0001 C CNN
F 4 "860020374012" V 2750 3625 50  0001 C CNN "Part Number"
	1    2750 3625
	0    -1   1    0   
$EndComp
Text GLabel 2550 3625 0    50   Input ~ 0
Sense_ripple
Wire Wire Line
	3200 3425 3250 3425
Wire Wire Line
	3200 3050 3200 3425
Wire Wire Line
	3975 3050 3200 3050
Wire Wire Line
	3975 3525 3975 3050
$Comp
L Device:Opamp_Dual_Generic U?
U 1 1 6159ED1C
P 3550 3525
F 0 "U?" H 3550 3158 50  0000 C CNN
F 1 "OPAMP" H 3550 3249 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3550 3525 50  0001 C CNN
F 3 "~" H 3550 3525 50  0001 C CNN
	1    3550 3525
	1    0    0    1   
$EndComp
Wire Wire Line
	3850 3525 3975 3525
$Comp
L Device:R_Small R?
U 1 1 615A4E3F
P 4300 3525
F 0 "R?" V 4150 3475 50  0000 L CNN
F 1 "10k" V 4225 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4300 3525 50  0001 C CNN
F 3 "~" H 4300 3525 50  0001 C CNN
	1    4300 3525
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 615A5F71
P 4300 4000
F 0 "R?" V 4150 3950 50  0000 L CNN
F 1 "10k" V 4225 3925 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4300 4000 50  0001 C CNN
F 3 "~" H 4300 4000 50  0001 C CNN
	1    4300 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 615A6416
P 3975 3775
F 0 "R?" H 3825 3725 50  0000 L CNN
F 1 "10k" H 3800 3800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3975 3775 50  0001 C CNN
F 3 "~" H 3975 3775 50  0001 C CNN
	1    3975 3775
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 615A6D44
P 4625 3775
F 0 "R?" H 4675 3725 50  0000 L CNN
F 1 "5k" H 4675 3800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4625 3775 50  0001 C CNN
F 3 "~" H 4625 3775 50  0001 C CNN
	1    4625 3775
	-1   0    0    1   
$EndComp
Wire Wire Line
	3975 3525 4200 3525
Connection ~ 3975 3525
Wire Wire Line
	4400 3525 4625 3525
Wire Wire Line
	4625 3525 4625 3675
Wire Wire Line
	4625 3875 4625 4000
Wire Wire Line
	4625 4000 4400 4000
Wire Wire Line
	4200 4000 3975 4000
Wire Wire Line
	3975 4000 3975 3875
Wire Wire Line
	3975 3675 3975 3525
$Comp
L Diode:1N4148W D?
U 1 1 615A9C1C
P 4625 4200
F 0 "D?" V 4600 4075 50  0000 C CNN
F 1 "DIODE" V 4525 4050 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4625 4025 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4625 4200 50  0001 C CNN
	1    4625 4200
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 615AB294
P 4300 4400
F 0 "D?" H 4300 4575 50  0000 C CNN
F 1 "DIODE" H 4300 4500 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4300 4225 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4300 4400 50  0001 C CNN
	1    4300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4400 4625 4400
Wire Wire Line
	4625 4400 4625 4350
Wire Wire Line
	4625 4050 4625 4000
Connection ~ 4625 4000
$Comp
L Device:Opamp_Dual_Generic U?
U 1 1 615B1F25
P 4300 4825
F 0 "U?" H 4300 4650 50  0000 C CNN
F 1 "OPAMP" H 4300 5050 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 4825 50  0001 C CNN
F 3 "~" H 4300 4825 50  0001 C CNN
	1    4300 4825
	1    0    0    1   
$EndComp
Wire Wire Line
	4150 4400 3975 4400
Wire Wire Line
	3975 4400 3975 4000
Connection ~ 3975 4000
Wire Wire Line
	4000 4725 3975 4725
Wire Wire Line
	3975 4725 3975 4400
Connection ~ 3975 4400
Wire Wire Line
	4600 4825 4625 4825
Wire Wire Line
	4625 4825 4625 4400
Connection ~ 4625 4400
Text GLabel 3925 4925 0    50   Input ~ 0
V_ref
Wire Wire Line
	3925 4925 4000 4925
$Comp
L Device:Opamp_Dual_Generic U?
U 1 1 615BE82F
P 5375 3625
F 0 "U?" H 5375 3450 50  0000 C CNN
F 1 "OPAMP" H 5375 3850 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5375 3625 50  0001 C CNN
F 3 "~" H 5375 3625 50  0001 C CNN
	1    5375 3625
	1    0    0    1   
$EndComp
Text GLabel 5025 3725 0    50   Input ~ 0
V_ref
Wire Wire Line
	5025 3725 5075 3725
Wire Wire Line
	5075 3525 5000 3525
$Comp
L Device:R_Small R?
U 1 1 615C42A2
P 5375 3175
F 0 "R?" V 5225 3125 50  0000 L CNN
F 1 "10k" V 5300 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5375 3175 50  0001 C CNN
F 3 "~" H 5375 3175 50  0001 C CNN
	1    5375 3175
	0    1    1    0   
$EndComp
Wire Wire Line
	5275 3175 5000 3175
Wire Wire Line
	5000 3175 5000 3525
Wire Wire Line
	5475 3175 5750 3175
Wire Wire Line
	5750 3175 5750 3625
Wire Wire Line
	5750 3625 5675 3625
$Comp
L Device:Opamp_Dual_Generic U?
U 1 1 615C74F4
P 6375 3525
F 0 "U?" H 6375 3350 50  0000 C CNN
F 1 "OPAMP" H 6375 3750 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6375 3525 50  0001 C CNN
F 3 "~" H 6375 3525 50  0001 C CNN
	1    6375 3525
	1    0    0    1   
$EndComp
Wire Wire Line
	5750 3625 6075 3625
Connection ~ 5750 3625
$Comp
L Device:R_Small R?
U 1 1 615C9470
P 6375 3175
F 0 "R?" V 6225 3125 50  0000 L CNN
F 1 "10k" V 6300 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6375 3175 50  0001 C CNN
F 3 "~" H 6375 3175 50  0001 C CNN
	1    6375 3175
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 615C9C2E
P 5975 3000
F 0 "R?" H 5825 2950 50  0000 L CNN
F 1 "10k" H 5800 3050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5975 3000 50  0001 C CNN
F 3 "~" H 5975 3000 50  0001 C CNN
	1    5975 3000
	-1   0    0    1   
$EndComp
Text GLabel 5900 2825 0    50   Input ~ 0
V_ref
Wire Wire Line
	5900 2825 5975 2825
Wire Wire Line
	5975 2825 5975 2900
Wire Wire Line
	5975 3100 5975 3175
Wire Wire Line
	5975 3175 6275 3175
Wire Wire Line
	6475 3175 6675 3175
Wire Wire Line
	6675 3175 6675 3525
Wire Wire Line
	6075 3425 5975 3425
Wire Wire Line
	5975 3425 5975 3175
Connection ~ 5975 3175
Text GLabel 7300 3525 2    50   Input ~ 0
Pk_voltage
$Comp
L Device:R_Small R?
U 1 1 615DDE1B
P 6875 3525
F 0 "R?" V 6800 3525 50  0000 C CNN
F 1 "16k" V 6975 3525 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6875 3525 50  0001 C CNN
F 3 "~" H 6875 3525 50  0001 C CNN
F 4 "RR0816P-163-D" V 6875 3525 50  0001 C CNN "Part Number"
	1    6875 3525
	0    1    1    0   
$EndComp
Wire Wire Line
	6975 3525 7100 3525
$Comp
L power:GNDD #PWR?
U 1 1 615DDE3D
P 7100 3825
F 0 "#PWR?" H 7100 3575 50  0001 C CNN
F 1 "GNDD" H 7104 3670 50  0000 C CNN
F 2 "" H 7100 3825 50  0001 C CNN
F 3 "" H 7100 3825 50  0001 C CNN
	1    7100 3825
	1    0    0    -1  
$EndComp
Connection ~ 7100 3525
Wire Wire Line
	6675 3525 6775 3525
Connection ~ 6675 3525
Wire Wire Line
	7100 3525 7300 3525
Wire Wire Line
	7100 3525 7100 3575
Wire Wire Line
	7100 3775 7100 3825
$Comp
L Device:C_Small C?
U 1 1 615DDE31
P 7100 3675
F 0 "C?" H 7325 3675 50  0000 R CNN
F 1 "1u 16V" H 7450 3775 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7100 3675 50  0001 C CNN
F 3 "~" H 7100 3675 50  0001 C CNN
	1    7100 3675
	1    0    0    1   
$EndComp
Wire Wire Line
	4625 3525 5000 3525
Connection ~ 4625 3525
Connection ~ 5000 3525
$Comp
L Device:R_Small R?
U 1 1 61593815
P 4525 1825
F 0 "R?" V 4375 1825 50  0000 C CNN
F 1 "10" V 4450 1825 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4525 1825 50  0001 C CNN
F 3 "~" H 4525 1825 50  0001 C CNN
	1    4525 1825
	0    1    1    0   
$EndComp
$EndSCHEMATC
