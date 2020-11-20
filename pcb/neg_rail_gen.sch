EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
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
L Diode:1N5822 D9
U 1 1 5FD6BB54
P 3350 3400
F 0 "D9" H 3350 3183 50  0000 C CNN
F 1 "1N5823" H 3350 3274 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 3350 3225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 3350 3400 50  0001 C CNN
	1    3350 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3400 5150 3400
$Comp
L Device:L L6
U 1 1 5FD6EA52
P 6650 3600
F 0 "L6" V 6840 3600 50  0000 C CNN
F 1 "33u" V 6749 3600 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRR1260" H 6650 3600 50  0001 C CNN
F 3 "~" H 6650 3600 50  0001 C CNN
	1    6650 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 3600 6400 3600
$Comp
L Device:CP C31
U 1 1 5FD71007
P 6950 3750
F 0 "C31" H 7068 3796 50  0000 L CNN
F 1 "220u" H 7068 3705 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-20_Kemet-V_Pad2.25x2.55mm_HandSolder" H 6988 3600 50  0001 C CNN
F 3 "~" H 6950 3750 50  0001 C CNN
	1    6950 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C32
U 1 1 5FD73530
P 7350 3750
F 0 "C32" H 7235 3704 50  0000 R CNN
F 1 "10u" H 7235 3795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7388 3600 50  0001 C CNN
F 3 "~" H 7350 3750 50  0001 C CNN
	1    7350 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:L L7
U 1 1 5FD79ECF
P 7950 4000
F 0 "L7" V 8140 4000 50  0000 C CNN
F 1 "3.3u" V 8049 4000 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L9.5mm_D4.0mm_P12.70mm_Horizontal_Fastron_SMCC" H 7950 4000 50  0001 C CNN
F 3 "~" H 7950 4000 50  0001 C CNN
	1    7950 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 3600 8150 3650
Text HLabel 9000 4000 2    50   Output ~ 0
Vo(-5V)
Connection ~ 8150 3600
$Comp
L Device:C C34
U 1 1 5FD79EE0
P 8600 3800
F 0 "C34" H 8485 3754 50  0000 R CNN
F 1 "10u" H 8485 3845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8638 3650 50  0001 C CNN
F 3 "~" H 8600 3800 50  0001 C CNN
	1    8600 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 3650 8600 3600
Connection ~ 8600 3600
Wire Wire Line
	8600 3600 8150 3600
$Comp
L Diode:1N5822 D10
U 1 1 5FD8306A
P 6400 3800
F 0 "D10" V 6354 3880 50  0000 L CNN
F 1 "1N5825" V 6445 3880 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 6400 3625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 6400 3800 50  0001 C CNN
	1    6400 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3650 6400 3600
Connection ~ 6400 3600
Wire Wire Line
	6400 3600 6500 3600
$Comp
L Device:CP C28
U 1 1 5FD8CD2C
P 3800 3550
F 0 "C28" H 3918 3596 50  0000 L CNN
F 1 "220u" H 3918 3505 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-20_Kemet-V_Pad2.25x2.55mm_HandSolder" H 3838 3400 50  0001 C CNN
F 3 "~" H 3800 3550 50  0001 C CNN
	1    3800 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR069
U 1 1 5FD8CD32
P 4150 3700
F 0 "#PWR069" H 4150 3500 50  0001 C CNN
F 1 "GNDPWR" H 4154 3546 50  0000 C CNN
F 2 "" H 4150 3650 50  0001 C CNN
F 3 "" H 4150 3650 50  0001 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR068
U 1 1 5FD8CD38
P 3800 3700
F 0 "#PWR068" H 3800 3500 50  0001 C CNN
F 1 "GNDPWR" H 3804 3546 50  0000 C CNN
F 2 "" H 3800 3650 50  0001 C CNN
F 3 "" H 3800 3650 50  0001 C CNN
	1    3800 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 5FD8CD3E
P 4150 3550
F 0 "C29" H 4265 3596 50  0000 L CNN
F 1 "10u" H 4265 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4188 3400 50  0001 C CNN
F 3 "~" H 4150 3550 50  0001 C CNN
	1    4150 3550
	1    0    0    -1  
$EndComp
Text HLabel 2450 3400 0    50   Input ~ 0
Vi(5V)
Wire Wire Line
	3800 3400 4150 3400
Connection ~ 4150 3400
$Comp
L Device:L_Core_Ferrite L?
U 1 1 5FD8CD48
P 2900 3400
AR Path="/5FD8CD48" Ref="L?"  Part="1" 
AR Path="/5FC35984/5FD8CD48" Ref="L5"  Part="1" 
F 0 "L5" V 3125 3400 50  0000 C CNN
F 1 "L_Core_Ferrite" V 3034 3400 50  0000 C CNN
F 2 "" H 2900 3400 50  0001 C CNN
F 3 "~" H 2900 3400 50  0001 C CNN
	1    2900 3400
	0    -1   -1   0   
$EndComp
Connection ~ 3800 3400
Wire Wire Line
	5800 3800 5800 4000
Wire Wire Line
	5300 3600 5150 3600
Wire Wire Line
	5800 4000 6050 4000
Wire Wire Line
	6400 3950 6400 4000
Connection ~ 6400 4000
Wire Wire Line
	6400 4000 6950 4000
Wire Wire Line
	6950 3900 6950 4000
Connection ~ 6950 4000
Wire Wire Line
	6950 4000 7350 4000
Wire Wire Line
	6800 3600 6950 3600
Connection ~ 6950 3600
Connection ~ 7350 4000
Wire Wire Line
	7350 3900 7350 4000
Wire Wire Line
	8600 4000 8600 3950
Wire Wire Line
	8600 4000 8900 4000
Connection ~ 8600 4000
$Comp
L Device:CP C33
U 1 1 5FDC37D7
P 8150 3800
F 0 "C33" H 8268 3846 50  0000 L CNN
F 1 "220u" H 8268 3755 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-20_Kemet-V_Pad2.25x2.55mm_HandSolder" H 8188 3650 50  0001 C CNN
F 3 "~" H 8150 3800 50  0001 C CNN
	1    8150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3950 8150 4000
Connection ~ 8150 4000
Wire Wire Line
	8150 4000 8600 4000
Wire Wire Line
	8100 4000 8150 4000
$Comp
L power:GNDPWR #PWR070
U 1 1 5FDC93D0
P 9050 3600
F 0 "#PWR070" H 9050 3400 50  0001 C CNN
F 1 "GNDPWR" H 9054 3446 50  0000 C CNN
F 2 "" H 9050 3550 50  0001 C CNN
F 3 "" H 9050 3550 50  0001 C CNN
	1    9050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3600 9050 3600
Wire Wire Line
	7350 3600 7700 3600
Connection ~ 7350 3600
Wire Wire Line
	7350 4000 7700 4000
$Comp
L Diode:1N5400 D11
U 1 1 5FDD5015
P 7700 3800
F 0 "D11" V 7654 3880 50  0000 L CNN
F 1 "1N5400" V 7745 3880 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 7700 3625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 7700 3800 50  0001 C CNN
	1    7700 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3650 7700 3600
Connection ~ 7700 3600
Wire Wire Line
	7700 3600 8150 3600
Wire Wire Line
	7700 3950 7700 4000
Connection ~ 7700 4000
Wire Wire Line
	7700 4000 7800 4000
$Comp
L Device:R R85
U 1 1 5FDDC2C2
P 5150 4200
F 0 "R85" H 5220 4246 50  0000 L CNN
F 1 "47k" H 5220 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 4200 50  0001 C CNN
F 3 "~" H 5150 4200 50  0001 C CNN
	1    5150 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R84
U 1 1 5FDDC644
P 4800 3900
F 0 "R84" H 4870 3946 50  0000 L CNN
F 1 "47k" H 4870 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4730 3900 50  0001 C CNN
F 3 "~" H 4800 3900 50  0001 C CNN
	1    4800 3900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LM2596S-ADJ U5
U 1 1 5FD69A66
P 5800 3500
F 0 "U5" H 5800 3867 50  0000 C CNN
F 1 "LM2596S-ADJ" H 5800 3776 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5850 3250 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 5800 3500 50  0001 C CNN
	1    5800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3600 5150 4050
Wire Wire Line
	4800 4050 5150 4050
Connection ~ 5150 4050
Wire Wire Line
	5150 4350 5800 4350
Wire Wire Line
	5800 4350 5800 4000
Connection ~ 5800 4000
$Comp
L Device:C C30
U 1 1 5FDEA8C9
P 4800 3550
F 0 "C30" H 4915 3596 50  0000 L CNN
F 1 "0.1u" H 4915 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4838 3400 50  0001 C CNN
F 3 "~" H 4800 3550 50  0001 C CNN
	1    4800 3550
	1    0    0    -1  
$EndComp
Connection ~ 4800 3400
Wire Wire Line
	4800 3700 4800 3750
Wire Wire Line
	3500 3400 3800 3400
Wire Wire Line
	3200 3400 3050 3400
Wire Wire Line
	4150 3400 4800 3400
Wire Wire Line
	6950 3600 7350 3600
$Comp
L Device:C C35
U 1 1 5FE0D49B
P 8950 4400
F 0 "C35" V 9202 4400 50  0000 C CNN
F 1 "DNI - Feedforward cap" V 9111 4400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8988 4250 50  0001 C CNN
F 3 "~" H 8950 4400 50  0001 C CNN
	1    8950 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R86
U 1 1 5FE19832
P 9250 4400
F 0 "R86" H 9180 4354 50  0000 R CNN
F 1 "3.07k" H 9180 4445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9180 4400 50  0001 C CNN
F 3 "~" H 9250 4400 50  0001 C CNN
	1    9250 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 4250 9250 3600
Wire Wire Line
	9250 3600 9050 3600
Connection ~ 9050 3600
Wire Wire Line
	6950 4900 6950 4000
Wire Wire Line
	9250 4550 9250 4600
Wire Wire Line
	6950 4900 9250 4900
$Comp
L Device:R R87
U 1 1 5FE1B1CA
P 9250 4750
F 0 "R87" H 9180 4704 50  0000 R CNN
F 1 "1k" H 9180 4795 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9180 4750 50  0001 C CNN
F 3 "~" H 9250 4750 50  0001 C CNN
	1    9250 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 4550 9550 4550
Wire Wire Line
	9550 4550 9550 3400
Connection ~ 9250 4550
Wire Wire Line
	6300 3400 6400 3400
Wire Wire Line
	8950 4250 9250 4250
Connection ~ 9250 4250
Wire Wire Line
	8950 4550 9250 4550
$Comp
L power:PWR_FLAG #FLG07
U 1 1 5FE36453
P 8900 4000
F 0 "#FLG07" H 8900 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 8900 4173 50  0000 C CNN
F 2 "" H 8900 4000 50  0001 C CNN
F 3 "~" H 8900 4000 50  0001 C CNN
	1    8900 4000
	1    0    0    -1  
$EndComp
Connection ~ 8900 4000
Wire Wire Line
	8900 4000 8950 4000
Wire Wire Line
	2450 3400 2750 3400
$Comp
L power:PWR_FLAG #FLG05
U 1 1 5FE3E0B5
P 3800 3400
F 0 "#FLG05" H 3800 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 3573 50  0000 C CNN
F 2 "" H 3800 3400 50  0001 C CNN
F 3 "~" H 3800 3400 50  0001 C CNN
	1    3800 3400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5FE3F4DD
P 6050 4000
F 0 "#FLG06" H 6050 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 6050 4173 50  0000 C CNN
F 2 "" H 6050 4000 50  0001 C CNN
F 3 "~" H 6050 4000 50  0001 C CNN
	1    6050 4000
	1    0    0    -1  
$EndComp
Connection ~ 6050 4000
Wire Wire Line
	6050 4000 6400 4000
$Comp
L Connector:TestPoint TP30
U 1 1 609BE548
P 5150 3400
F 0 "TP30" H 5208 3518 50  0000 L CNN
F 1 "TestPoint" H 5208 3427 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5350 3400 50  0001 C CNN
F 3 "~" H 5350 3400 50  0001 C CNN
	1    5150 3400
	1    0    0    -1  
$EndComp
Connection ~ 5150 3400
Wire Wire Line
	5150 3400 4800 3400
$Comp
L Connector:TestPoint TP31
U 1 1 609BF7FB
P 6400 3400
F 0 "TP31" H 6458 3518 50  0000 L CNN
F 1 "TestPoint" H 6458 3427 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6600 3400 50  0001 C CNN
F 3 "~" H 6600 3400 50  0001 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
Connection ~ 6400 3400
Wire Wire Line
	6400 3400 9550 3400
$Comp
L Connector:TestPoint TP32
U 1 1 609C01D4
P 6400 3600
F 0 "TP32" H 6458 3718 50  0000 L CNN
F 1 "TestPoint" H 6458 3627 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6600 3600 50  0001 C CNN
F 3 "~" H 6600 3600 50  0001 C CNN
	1    6400 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP33
U 1 1 609C0F52
P 8950 4000
F 0 "TP33" H 9008 4118 50  0000 L CNN
F 1 "TestPoint" H 9008 4027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 9150 4000 50  0001 C CNN
F 3 "~" H 9150 4000 50  0001 C CNN
	1    8950 4000
	1    0    0    -1  
$EndComp
Connection ~ 8950 4000
Wire Wire Line
	8950 4000 9000 4000
$Comp
L Connector:TestPoint TP34
U 1 1 609C48B5
P 9050 3600
F 0 "TP34" H 9108 3718 50  0000 L CNN
F 1 "TestPoint" H 9108 3627 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 9250 3600 50  0001 C CNN
F 3 "~" H 9250 3600 50  0001 C CNN
	1    9050 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
