EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L Device:Transformer_1P_SS T4
U 1 1 5FB4744E
P 10350 2650
F 0 "T4" H 10350 2225 50  0000 C CNN
F 1 "Transformer_1P_SS" H 10350 2316 50  0000 C CNN
F 2 "iq_siggen:trifilar_wound_toroidal_rf_transformer" H 10350 2650 50  0001 C CNN
F 3 "~" H 10350 2650 50  0001 C CNN
	1    10350 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9950 2850 9600 2850
$Comp
L Device:Transformer_1P_SS T?
U 1 1 5FB47488
P 8250 2650
AR Path="/5FB47488" Ref="T?"  Part="1" 
AR Path="/5FB04C67/5FB47488" Ref="T2"  Part="1" 
F 0 "T2" H 8250 3031 50  0000 C CNN
F 1 "Transformer_1P_SS" H 8250 2940 50  0000 C CNN
F 2 "iq_siggen:trifilar_wound_toroidal_rf_transformer" H 8250 2650 50  0001 C CNN
F 3 "~" H 8250 2650 50  0001 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
Text HLabel 9850 2650 0    50   Input ~ 0
IF_I
Text HLabel 10750 2450 2    50   Output ~ 0
RF_I
$Comp
L TLV3542IDR:TLV3542IDR U?
U 1 1 5FB85325
P 5200 3650
AR Path="/5FB85325" Ref="U?"  Part="1" 
AR Path="/5FB04C67/5FB85325" Ref="U4"  Part="1" 
F 0 "U4" H 5200 4320 50  0000 C CNN
F 1 "TLV3542IDR" H 5200 4229 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5200 3650 50  0001 L BNN
F 3 "" H 5200 3650 50  0001 C CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FB85331
P 1700 2950
AR Path="/5FB85331" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB85331" Ref="R66"  Part="1" 
F 0 "R66" V 1493 2950 50  0000 C CNN
F 1 "DNI" V 1584 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1630 2950 50  0001 C CNN
F 3 "~" H 1700 2950 50  0001 C CNN
	1    1700 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5FB8533A
P 3400 3100
AR Path="/5FB8533A" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB8533A" Ref="R73"  Part="1" 
F 0 "R73" V 3607 3100 50  0000 C CNN
F 1 "500" V 3516 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 3100 50  0001 C CNN
F 3 "~" H 3400 3100 50  0001 C CNN
	1    3400 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FB85340
P 3400 2800
AR Path="/5FB85340" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB85340" Ref="R72"  Part="1" 
F 0 "R72" V 3193 2800 50  0000 C CNN
F 1 "500" V 3284 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 2800 50  0001 C CNN
F 3 "~" H 3400 2800 50  0001 C CNN
	1    3400 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 2800 1700 2800
Connection ~ 1700 2800
$Comp
L Device:R R?
U 1 1 5FB8535E
P 5150 2650
AR Path="/5FB8535E" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB8535E" Ref="R78"  Part="1" 
F 0 "R78" V 4943 2650 50  0000 C CNN
F 1 "1.5k" V 5034 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 2650 50  0001 C CNN
F 3 "~" H 5150 2650 50  0001 C CNN
	1    5150 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FB85364
P 3850 2650
AR Path="/5FB85364" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB85364" Ref="R76"  Part="1" 
F 0 "R76" V 3643 2650 50  0000 C CNN
F 1 "1.5k" V 3734 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 2650 50  0001 C CNN
F 3 "~" H 3850 2650 50  0001 C CNN
	1    3850 2650
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FB8536A
P 3850 2500
AR Path="/5FB8536A" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FB8536A" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 3850 2250 50  0001 C CNN
F 1 "GNDA" H 3855 2327 50  0000 C CNN
F 2 "" H 3850 2500 50  0001 C CNN
F 3 "" H 3850 2500 50  0001 C CNN
	1    3850 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 2900 3850 2800
Wire Wire Line
	3850 3000 3850 3100
Wire Wire Line
	3850 3100 3550 3100
Wire Wire Line
	3550 2800 3700 2800
$Comp
L Device:R R?
U 1 1 5FB8537A
P 1700 4350
AR Path="/5FB8537A" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB8537A" Ref="R68"  Part="1" 
F 0 "R68" V 1493 4350 50  0000 C CNN
F 1 "DNI" V 1584 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1630 4350 50  0001 C CNN
F 3 "~" H 1700 4350 50  0001 C CNN
	1    1700 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5FB85380
P 3400 4500
AR Path="/5FB85380" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB85380" Ref="R75"  Part="1" 
F 0 "R75" V 3607 4500 50  0000 C CNN
F 1 "500" V 3516 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 4500 50  0001 C CNN
F 3 "~" H 3400 4500 50  0001 C CNN
	1    3400 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FB85386
P 3400 4200
AR Path="/5FB85386" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB85386" Ref="R74"  Part="1" 
F 0 "R74" V 3193 4200 50  0000 C CNN
F 1 "500" V 3284 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 4200 50  0001 C CNN
F 3 "~" H 3400 4200 50  0001 C CNN
	1    3400 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 4200 1700 4200
Connection ~ 1700 4200
$Comp
L Device:R R?
U 1 1 5FB8539E
P 3850 4050
AR Path="/5FB8539E" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB8539E" Ref="R77"  Part="1" 
F 0 "R77" V 3643 4050 50  0000 C CNN
F 1 "1.5k" V 3734 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 4050 50  0001 C CNN
F 3 "~" H 3850 4050 50  0001 C CNN
	1    3850 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FB853A4
P 3850 3900
AR Path="/5FB853A4" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FB853A4" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 3850 3650 50  0001 C CNN
F 1 "GNDA" H 3855 3727 50  0000 C CNN
F 2 "" H 3850 3900 50  0001 C CNN
F 3 "" H 3850 3900 50  0001 C CNN
	1    3850 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 4300 3850 4200
Wire Wire Line
	3850 4400 3850 4500
Wire Wire Line
	3850 4500 3550 4500
Wire Wire Line
	3550 4200 3700 4200
Wire Wire Line
	4150 4300 4150 3800
Wire Wire Line
	4150 3800 4500 3800
Wire Wire Line
	4150 4300 3850 4300
Wire Wire Line
	4300 4400 4300 3900
Wire Wire Line
	4300 3900 4500 3900
Wire Wire Line
	4300 4400 4150 4400
Wire Wire Line
	4150 3000 4150 3450
Wire Wire Line
	4150 3450 4500 3450
Wire Wire Line
	4150 3000 3850 3000
Wire Wire Line
	4300 2900 4300 3350
Wire Wire Line
	4300 3350 4500 3350
Wire Wire Line
	4300 2900 3850 2900
$Comp
L Device:R R?
U 1 1 5FB853BB
P 5150 4650
AR Path="/5FB853BB" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB853BB" Ref="R79"  Part="1" 
F 0 "R79" V 4943 4650 50  0000 C CNN
F 1 "1.5k" V 5034 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 4650 50  0001 C CNN
F 3 "~" H 5150 4650 50  0001 C CNN
	1    5150 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2650 5500 2650
Wire Wire Line
	5900 2650 5900 3400
Wire Wire Line
	5900 3850 5900 4650
Wire Wire Line
	5900 4650 5550 4650
Wire Wire Line
	4150 2650 4150 3000
Connection ~ 4150 3000
Connection ~ 3850 2800
Wire Wire Line
	4150 2650 4850 2650
Wire Wire Line
	4150 4650 4150 4400
Connection ~ 4150 4400
Wire Wire Line
	4150 4400 3850 4400
Connection ~ 3850 4200
$Comp
L Device:C C?
U 1 1 5FB853D9
P 2550 2950
AR Path="/5FB853D9" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FB853D9" Ref="C12"  Part="1" 
F 0 "C12" H 2665 2996 50  0000 L CNN
F 1 "DNI" H 2665 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2588 2800 50  0001 C CNN
F 3 "~" H 2550 2950 50  0001 C CNN
	1    2550 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3100 2550 3100
Connection ~ 2550 3100
Connection ~ 2550 2800
Wire Wire Line
	2550 2800 2400 2800
$Comp
L Device:C C?
U 1 1 5FB8542B
P 2550 4350
AR Path="/5FB8542B" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FB8542B" Ref="C13"  Part="1" 
F 0 "C13" H 2665 4396 50  0000 L CNN
F 1 "DNI" H 2665 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2588 4200 50  0001 C CNN
F 3 "~" H 2550 4350 50  0001 C CNN
	1    2550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4500 2550 4500
Connection ~ 2550 4500
Connection ~ 2550 4200
Wire Wire Line
	2550 4200 2400 4200
$Comp
L Device:C C?
U 1 1 5FB8546B
P 5150 4850
AR Path="/5FB8546B" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FB8546B" Ref="C23"  Part="1" 
F 0 "C23" H 5265 4896 50  0000 L CNN
F 1 "5p" H 5265 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 4700 50  0001 C CNN
F 3 "~" H 5150 4850 50  0001 C CNN
	1    5150 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4650 4800 4650
Wire Wire Line
	5000 4850 4800 4850
Wire Wire Line
	4800 4850 4800 4650
Connection ~ 4800 4650
Wire Wire Line
	4800 4650 4150 4650
Wire Wire Line
	5550 4850 5550 4650
Connection ~ 5550 4650
Wire Wire Line
	5550 4650 5300 4650
$Comp
L Device:C C?
U 1 1 5FB8547A
P 5150 2200
AR Path="/5FB8547A" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FB8547A" Ref="C22"  Part="1" 
F 0 "C22" H 5265 2246 50  0000 L CNN
F 1 "5p" H 5265 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 2050 50  0001 C CNN
F 3 "~" H 5150 2200 50  0001 C CNN
	1    5150 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2200 4850 2200
Wire Wire Line
	4850 2200 4850 2650
Connection ~ 4850 2650
Wire Wire Line
	4850 2650 5000 2650
Wire Wire Line
	5300 2200 5500 2200
Wire Wire Line
	5500 2200 5500 2650
Connection ~ 5500 2650
Wire Wire Line
	5500 2650 5900 2650
$Comp
L Device:C C?
U 1 1 5FB85488
P 3700 2650
AR Path="/5FB85488" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FB85488" Ref="C14"  Part="1" 
F 0 "C14" H 3815 2696 50  0000 L CNN
F 1 "5p" H 3815 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3738 2500 50  0001 C CNN
F 3 "~" H 3700 2650 50  0001 C CNN
	1    3700 2650
	-1   0    0    1   
$EndComp
Connection ~ 3700 2800
Wire Wire Line
	3700 2800 3850 2800
$Comp
L power:GNDA #PWR?
U 1 1 5FB85490
P 3700 2500
AR Path="/5FB85490" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FB85490" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 3700 2250 50  0001 C CNN
F 1 "GNDA" H 3705 2327 50  0000 C CNN
F 2 "" H 3700 2500 50  0001 C CNN
F 3 "" H 3700 2500 50  0001 C CNN
	1    3700 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5FB85496
P 3700 4050
AR Path="/5FB85496" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FB85496" Ref="C15"  Part="1" 
F 0 "C15" H 3815 4096 50  0000 L CNN
F 1 "5p" H 3815 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3738 3900 50  0001 C CNN
F 3 "~" H 3700 4050 50  0001 C CNN
	1    3700 4050
	-1   0    0    1   
$EndComp
Connection ~ 3700 4200
Wire Wire Line
	3700 4200 3850 4200
$Comp
L power:GNDA #PWR?
U 1 1 5FB8549E
P 3700 3900
AR Path="/5FB8549E" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FB8549E" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 3700 3650 50  0001 C CNN
F 1 "GNDA" H 3705 3727 50  0000 C CNN
F 2 "" H 3700 3900 50  0001 C CNN
F 3 "" H 3700 3900 50  0001 C CNN
	1    3700 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5FB854A4
P 3100 2950
AR Path="/5FB854A4" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB854A4" Ref="R70"  Part="1" 
F 0 "R70" V 2893 2950 50  0000 C CNN
F 1 "100" V 2984 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3030 2950 50  0001 C CNN
F 3 "~" H 3100 2950 50  0001 C CNN
	1    3100 2950
	-1   0    0    1   
$EndComp
Connection ~ 3100 3100
Wire Wire Line
	3100 3100 3250 3100
Connection ~ 3100 2800
Wire Wire Line
	3100 2800 3250 2800
$Comp
L Device:R R?
U 1 1 5FB854AE
P 3100 4350
AR Path="/5FB854AE" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FB854AE" Ref="R71"  Part="1" 
F 0 "R71" V 2893 4350 50  0000 C CNN
F 1 "100" V 2984 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3030 4350 50  0001 C CNN
F 3 "~" H 3100 4350 50  0001 C CNN
	1    3100 4350
	-1   0    0    1   
$EndComp
Connection ~ 3100 4500
Wire Wire Line
	3100 4500 3250 4500
Connection ~ 3100 4200
Wire Wire Line
	3100 4200 3250 4200
Wire Wire Line
	2550 3100 3100 3100
Wire Wire Line
	2550 2800 3100 2800
Wire Wire Line
	2550 4500 3100 4500
Wire Wire Line
	2550 4200 3100 4200
Wire Wire Line
	5300 4850 5550 4850
Text HLabel 1100 2800 0    50   Input ~ 0
CLK_I_P
Text HLabel 1100 3100 0    50   Input ~ 0
CLK_I_N
Text HLabel 1100 4200 0    50   Input ~ 0
CLK_Q_P
Text HLabel 1100 4500 0    50   Input ~ 0
CLK_Q_N
$Comp
L Device:Transformer_1P_SS T3
U 1 1 5FBF6664
P 10300 4850
F 0 "T3" H 10300 4425 50  0000 C CNN
F 1 "Transformer_1P_SS" H 10300 4516 50  0000 C CNN
F 2 "iq_siggen:trifilar_wound_toroidal_rf_transformer" H 10300 4850 50  0001 C CNN
F 3 "~" H 10300 4850 50  0001 C CNN
	1    10300 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:Transformer_1P_SS T?
U 1 1 5FBF669B
P 8200 4850
AR Path="/5FBF669B" Ref="T?"  Part="1" 
AR Path="/5FB04C67/5FBF669B" Ref="T1"  Part="1" 
F 0 "T1" H 8200 5231 50  0000 C CNN
F 1 "Transformer_1P_SS" H 8200 5140 50  0000 C CNN
F 2 "iq_siggen:trifilar_wound_toroidal_rf_transformer" H 8200 4850 50  0001 C CNN
F 3 "~" H 8200 4850 50  0001 C CNN
	1    8200 4850
	1    0    0    -1  
$EndComp
Text HLabel 10700 4650 2    50   Output ~ 0
RF_Q
Connection ~ 5900 3850
Connection ~ 5900 3400
Text Label 7700 2450 0    50   ~ 0
LO_I
$Comp
L Device:R R?
U 1 1 5FC19612
P 6350 3400
AR Path="/5FC19612" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FC19612" Ref="R80"  Part="1" 
F 0 "R80" V 6143 3400 50  0000 C CNN
F 1 "50" V 6234 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 3400 50  0001 C CNN
F 3 "~" H 6350 3400 50  0001 C CNN
	1    6350 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FC19B22
P 6350 3850
AR Path="/5FC19B22" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FC19B22" Ref="R81"  Part="1" 
F 0 "R81" V 6143 3850 50  0000 C CNN
F 1 "50" V 6234 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 3850 50  0001 C CNN
F 3 "~" H 6350 3850 50  0001 C CNN
	1    6350 3850
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FC19E90
P 7850 2850
AR Path="/5FC19E90" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FC19E90" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 7850 2600 50  0001 C CNN
F 1 "GNDA" H 7855 2677 50  0000 C CNN
F 2 "" H 7850 2850 50  0001 C CNN
F 3 "" H 7850 2850 50  0001 C CNN
	1    7850 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FC1BC1A
P 7800 5050
AR Path="/5FC1BC1A" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FC1BC1A" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 7800 4800 50  0001 C CNN
F 1 "GNDA" H 7805 4877 50  0000 C CNN
F 2 "" H 7800 5050 50  0001 C CNN
F 3 "" H 7800 5050 50  0001 C CNN
	1    7800 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FC1F9A2
P 8600 4850
AR Path="/5FC1F9A2" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FC1F9A2" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 8600 4600 50  0001 C CNN
F 1 "GNDA" H 8605 4677 50  0000 C CNN
F 2 "" H 8600 4850 50  0001 C CNN
F 3 "" H 8600 4850 50  0001 C CNN
	1    8600 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FC235BF
P 10700 5050
AR Path="/5FC235BF" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FC235BF" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 10700 4800 50  0001 C CNN
F 1 "GNDA" H 10705 4877 50  0000 C CNN
F 2 "" H 10700 5050 50  0001 C CNN
F 3 "" H 10700 5050 50  0001 C CNN
	1    10700 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FC272D9
P 10750 2850
AR Path="/5FC272D9" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FC272D9" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 10750 2600 50  0001 C CNN
F 1 "GNDA" H 10755 2677 50  0000 C CNN
F 2 "" H 10750 2850 50  0001 C CNN
F 3 "" H 10750 2850 50  0001 C CNN
	1    10750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FC2AE92
P 8650 2650
AR Path="/5FC2AE92" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FC2AE92" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 8650 2400 50  0001 C CNN
F 1 "GNDA" H 8655 2477 50  0000 C CNN
F 2 "" H 8650 2650 50  0001 C CNN
F 3 "" H 8650 2650 50  0001 C CNN
	1    8650 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A11B69
P 7100 3250
AR Path="/60A11B69" Ref="R?"  Part="1" 
AR Path="/5FB04C67/60A11B69" Ref="R83"  Part="1" 
F 0 "R83" V 6893 3250 50  0000 C CNN
F 1 "DNI - 50" V 6984 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7030 3250 50  0001 C CNN
F 3 "~" H 7100 3250 50  0001 C CNN
	1    7100 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60A12613
P 6950 4000
AR Path="/60A12613" Ref="R?"  Part="1" 
AR Path="/5FB04C67/60A12613" Ref="R82"  Part="1" 
F 0 "R82" V 6743 4000 50  0000 C CNN
F 1 "DNI-50" V 6834 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6880 4000 50  0001 C CNN
F 3 "~" H 6950 4000 50  0001 C CNN
	1    6950 4000
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 60A13202
P 6950 4150
AR Path="/60A13202" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/60A13202" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 6950 3900 50  0001 C CNN
F 1 "GNDA" H 6955 3977 50  0000 C CNN
F 2 "" H 6950 4150 50  0001 C CNN
F 3 "" H 6950 4150 50  0001 C CNN
	1    6950 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 60A1375D
P 7100 3400
AR Path="/60A1375D" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/60A1375D" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 7100 3150 50  0001 C CNN
F 1 "GNDA" H 7105 3227 50  0000 C CNN
F 2 "" H 7100 3400 50  0001 C CNN
F 3 "" H 7100 3400 50  0001 C CNN
	1    7100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2650 9950 2650
Wire Wire Line
	9800 4850 9900 4850
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 5FB74ED6
P 6900 2450
F 0 "JP4" V 6946 2517 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 6855 2517 50  0000 L CNN
F 2 "iq_siggen:50ohm_solder_jumper" H 6900 2450 50  0001 C CNN
F 3 "~" H 6900 2450 50  0001 C CNN
	1    6900 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 2650 6900 3100
$Comp
L Connector:Conn_Coaxial J18
U 1 1 5FB8449D
P 6500 2250
F 0 "J18" H 6428 2488 50  0000 C CNN
F 1 "Conn_Coaxial" H 6428 2397 50  0000 C CNN
F 2 "iq_siggen:SMA_Samtec_SMA-J-P-X-ST-EM1_EdgeMount_withSTEP" H 6500 2250 50  0001 C CNN
F 3 " ~" H 6500 2250 50  0001 C CNN
	1    6500 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6900 2250 6700 2250
$Comp
L power:GNDA #PWR?
U 1 1 5FB8C368
P 6500 2450
AR Path="/5FB8C368" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FB8C368" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 6500 2200 50  0001 C CNN
F 1 "GNDA" H 6505 2277 50  0000 C CNN
F 2 "" H 6500 2450 50  0001 C CNN
F 3 "" H 6500 2450 50  0001 C CNN
	1    6500 2450
	1    0    0    -1  
$EndComp
Text Label 6750 2250 0    50   ~ 0
LO_I_EXT
Wire Wire Line
	7050 2450 7850 2450
Wire Wire Line
	7100 3100 6900 3100
Connection ~ 6900 3100
Wire Wire Line
	6900 3100 6900 3400
Text Label 7700 4650 0    50   ~ 0
LO_Q
Wire Wire Line
	7800 4650 7700 4650
Wire Wire Line
	7550 4450 7550 3850
Wire Wire Line
	7550 3850 6950 3850
Connection ~ 6950 3850
$Comp
L Connector:Conn_Coaxial J19
U 1 1 5FBE8678
P 6850 5100
F 0 "J19" H 6778 5338 50  0000 C CNN
F 1 "Conn_Coaxial" H 6778 5247 50  0000 C CNN
F 2 "iq_siggen:SMA_Samtec_SMA-J-P-X-ST-EM1_EdgeMount_withSTEP" H 6850 5100 50  0001 C CNN
F 3 " ~" H 6850 5100 50  0001 C CNN
	1    6850 5100
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FBE867E
P 6850 5300
AR Path="/5FBE867E" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FBE867E" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 6850 5050 50  0001 C CNN
F 1 "GNDA" H 6855 5127 50  0000 C CNN
F 2 "" H 6850 5300 50  0001 C CNN
F 3 "" H 6850 5300 50  0001 C CNN
	1    6850 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5100 7550 4850
Text Label 7150 5100 0    50   ~ 0
LO_Q_EXT
Wire Wire Line
	7050 5100 7550 5100
$Comp
L Device:D_Schottky_x2_Serial_AKC D6
U 1 1 5FBCC6CF
P 9050 2650
F 0 "D6" V 9096 2730 50  0000 L CNN
F 1 "BAT15-04W" V 9005 2730 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70_Handsoldering" H 9050 2650 50  0001 C CNN
F 3 "https://www.infineon.com/cms/en/product/rf-wireless-control/rf-diode/rf-mixer-and-detector-schottky-diode/bat15-04w/" H 9050 2650 50  0001 C CNN
	1    9050 2650
	0    1    -1   0   
$EndComp
Wire Wire Line
	9400 2350 9200 2350
Wire Wire Line
	9400 2950 9200 2950
$Comp
L Device:D_Schottky_x2_Serial_AKC D8
U 1 1 5FBCAA52
P 9400 2650
F 0 "D8" V 9354 2730 50  0000 L CNN
F 1 "BAT15-04W" V 9445 2730 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70_Handsoldering" H 9400 2650 50  0001 C CNN
F 3 "https://www.infineon.com/cms/en/product/rf-wireless-control/rf-diode/rf-mixer-and-detector-schottky-diode/bat15-04w/" H 9400 2650 50  0001 C CNN
	1    9400 2650
	0    -1   1    0   
$EndComp
Wire Wire Line
	8650 2450 8850 2450
Wire Wire Line
	8850 2450 8850 2200
Wire Wire Line
	8850 2200 9200 2200
Wire Wire Line
	9200 2200 9200 2350
Connection ~ 9200 2350
Wire Wire Line
	9200 2350 9050 2350
Wire Wire Line
	8650 2850 8850 2850
Wire Wire Line
	8850 2850 8850 3050
Wire Wire Line
	8850 3050 9200 3050
Wire Wire Line
	9200 3050 9200 2950
Connection ~ 9200 2950
Wire Wire Line
	9200 2950 9050 2950
Wire Wire Line
	9950 2450 8900 2450
Wire Wire Line
	8900 2450 8900 2600
Wire Wire Line
	8900 2600 8850 2600
Wire Wire Line
	8850 2600 8850 2650
Wire Wire Line
	9600 2850 9600 2650
Text HLabel 9800 4850 0    50   Input ~ 0
IF_Q
$Comp
L Device:D_Schottky_x2_Serial_AKC D5
U 1 1 5FC2ECB9
P 9000 4850
F 0 "D5" V 9046 4930 50  0000 L CNN
F 1 "BAT15-04W" V 8955 4930 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70_Handsoldering" H 9000 4850 50  0001 C CNN
F 3 "https://www.infineon.com/cms/en/product/rf-wireless-control/rf-diode/rf-mixer-and-detector-schottky-diode/bat15-04w/" H 9000 4850 50  0001 C CNN
	1    9000 4850
	0    1    -1   0   
$EndComp
Wire Wire Line
	9350 4550 9150 4550
Wire Wire Line
	9350 5150 9150 5150
$Comp
L Device:D_Schottky_x2_Serial_AKC D7
U 1 1 5FC2ECC1
P 9350 4850
F 0 "D7" V 9304 4930 50  0000 L CNN
F 1 "BAT15-04W" V 9395 4930 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70_Handsoldering" H 9350 4850 50  0001 C CNN
F 3 "https://www.infineon.com/cms/en/product/rf-wireless-control/rf-diode/rf-mixer-and-detector-schottky-diode/bat15-04w/" H 9350 4850 50  0001 C CNN
	1    9350 4850
	0    -1   1    0   
$EndComp
Wire Wire Line
	9150 4400 9150 4550
Connection ~ 9150 4550
Wire Wire Line
	9150 4550 9000 4550
Wire Wire Line
	9150 5250 9150 5150
Connection ~ 9150 5150
Wire Wire Line
	9150 5150 9000 5150
Wire Wire Line
	9900 4650 8850 4650
Wire Wire Line
	8850 4650 8850 4800
Wire Wire Line
	8850 4800 8800 4800
Wire Wire Line
	9550 4850 9550 5050
Wire Wire Line
	9550 5050 9900 5050
Wire Wire Line
	8600 4400 8600 4650
Wire Wire Line
	8600 4400 9150 4400
Wire Wire Line
	8600 5250 8600 5050
Wire Wire Line
	8600 5250 9150 5250
Wire Wire Line
	8800 4800 8800 4850
$Comp
L Device:C C?
U 1 1 5FDE9350
P 4800 6650
AR Path="/5FDE9350" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE9350" Ref="C20"  Part="1" 
F 0 "C20" H 4915 6696 50  0000 L CNN
F 1 "0.1u" H 4915 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4838 6500 50  0001 C CNN
F 3 "~" H 4800 6650 50  0001 C CNN
	1    4800 6650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5FDE9356
P 4800 7050
AR Path="/5FDE9356" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE9356" Ref="C21"  Part="1" 
F 0 "C21" H 4915 7096 50  0000 L CNN
F 1 "0.1u" H 4915 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4838 6900 50  0001 C CNN
F 3 "~" H 4800 7050 50  0001 C CNN
	1    4800 7050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5FDE935C
P 5600 6650
AR Path="/5FDE935C" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE935C" Ref="C24"  Part="1" 
F 0 "C24" H 5715 6696 50  0000 L CNN
F 1 "10u" H 5715 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5638 6500 50  0001 C CNN
F 3 "~" H 5600 6650 50  0001 C CNN
	1    5600 6650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5FDE9362
P 5600 7050
AR Path="/5FDE9362" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE9362" Ref="C25"  Part="1" 
F 0 "C25" H 5715 7096 50  0000 L CNN
F 1 "10u" H 5715 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5638 6900 50  0001 C CNN
F 3 "~" H 5600 7050 50  0001 C CNN
	1    5600 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 6800 5600 6850
$Comp
L power:GNDA #PWR?
U 1 1 5FDE9369
P 6200 6950
AR Path="/5FDE9369" Ref="#PWR?"  Part="1" 
AR Path="/5FB04C67/5FDE9369" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 6200 6700 50  0001 C CNN
F 1 "GNDA" H 6205 6777 50  0000 C CNN
F 2 "" H 6200 6950 50  0001 C CNN
F 3 "" H 6200 6950 50  0001 C CNN
	1    6200 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6850 6200 6950
Connection ~ 5600 6850
Wire Wire Line
	5600 6850 5600 6900
$Comp
L power:+2V5 #PWR055
U 1 1 5FDE9372
P 6050 6400
AR Path="/5FB04C67/5FDE9372" Ref="#PWR055"  Part="1" 
AR Path="/5FB3742F/5FDE9372" Ref="#PWR?"  Part="1" 
F 0 "#PWR055" H 6050 6250 50  0001 C CNN
F 1 "+2V5" H 6065 6573 50  0000 C CNN
F 2 "" H 6050 6400 50  0001 C CNN
F 3 "" H 6050 6400 50  0001 C CNN
	1    6050 6400
	1    0    0    -1  
$EndComp
$Comp
L power:-2V5 #PWR056
U 1 1 5FDE9378
P 6050 7200
AR Path="/5FB04C67/5FDE9378" Ref="#PWR056"  Part="1" 
AR Path="/5FB3742F/5FDE9378" Ref="#PWR?"  Part="1" 
F 0 "#PWR056" H 6050 7300 50  0001 C CNN
F 1 "-2V5" H 6065 7373 50  0000 C CNN
F 2 "" H 6050 7200 50  0001 C CNN
F 3 "" H 6050 7200 50  0001 C CNN
	1    6050 7200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5FDE937E
P 4400 6650
AR Path="/5FDE937E" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE937E" Ref="C18"  Part="1" 
F 0 "C18" H 4515 6696 50  0000 L CNN
F 1 "0.1u" H 4515 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 6500 50  0001 C CNN
F 3 "~" H 4400 6650 50  0001 C CNN
	1    4400 6650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5FDE9384
P 4000 6650
AR Path="/5FDE9384" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE9384" Ref="C16"  Part="1" 
F 0 "C16" H 4115 6696 50  0000 L CNN
F 1 "0.1u" H 4115 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4038 6500 50  0001 C CNN
F 3 "~" H 4000 6650 50  0001 C CNN
	1    4000 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 6500 4400 6500
Connection ~ 4800 6500
Connection ~ 4400 6500
Wire Wire Line
	4400 6500 4800 6500
$Comp
L Device:C C?
U 1 1 5FDE938E
P 4400 7050
AR Path="/5FDE938E" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE938E" Ref="C19"  Part="1" 
F 0 "C19" H 4515 7096 50  0000 L CNN
F 1 "0.1u" H 4515 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 6900 50  0001 C CNN
F 3 "~" H 4400 7050 50  0001 C CNN
	1    4400 7050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5FDE9394
P 4000 7050
AR Path="/5FDE9394" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE9394" Ref="C17"  Part="1" 
F 0 "C17" H 4115 7096 50  0000 L CNN
F 1 "0.1u" H 4115 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4038 6900 50  0001 C CNN
F 3 "~" H 4000 7050 50  0001 C CNN
	1    4000 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 7200 4400 7200
Connection ~ 4800 7200
Connection ~ 4400 7200
Wire Wire Line
	4400 7200 4000 7200
$Comp
L Device:C C?
U 1 1 5FDE939E
P 5850 6650
AR Path="/5FDE939E" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE939E" Ref="C26"  Part="1" 
F 0 "C26" H 5965 6696 50  0000 L CNN
F 1 "10u" H 5965 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5888 6500 50  0001 C CNN
F 3 "~" H 5850 6650 50  0001 C CNN
	1    5850 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 6850 5850 6850
$Comp
L Device:C C?
U 1 1 5FDE93A5
P 5850 7050
AR Path="/5FDE93A5" Ref="C?"  Part="1" 
AR Path="/5FB04C67/5FDE93A5" Ref="C27"  Part="1" 
F 0 "C27" H 5965 7096 50  0000 L CNN
F 1 "10u" H 5965 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5888 6900 50  0001 C CNN
F 3 "~" H 5850 7050 50  0001 C CNN
	1    5850 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 6900 5850 6850
Connection ~ 5850 6850
Wire Wire Line
	5850 6850 6200 6850
Wire Wire Line
	5850 6850 5850 6800
Wire Wire Line
	5850 6500 5600 6500
Wire Wire Line
	5850 7200 5600 7200
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5FDE93B1
P 5950 6500
F 0 "FB1" V 5713 6500 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 5804 6500 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.05x1.20mm_HandSolder" V 5880 6500 50  0001 C CNN
F 3 "~" H 5950 6500 50  0001 C CNN
	1    5950 6500
	0    1    1    0   
$EndComp
Connection ~ 5850 6500
Wire Wire Line
	6050 6400 6050 6500
Wire Wire Line
	5600 6500 4800 6500
Connection ~ 5600 6500
Connection ~ 5850 7200
Wire Wire Line
	4800 6800 4800 6850
Wire Wire Line
	5600 6850 4800 6850
Connection ~ 4800 6850
Wire Wire Line
	4800 6850 4800 6900
Wire Wire Line
	4800 7200 5600 7200
Connection ~ 5600 7200
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5FDE93C2
P 5950 7200
F 0 "FB2" V 5713 7200 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 5804 7200 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.05x1.20mm_HandSolder" V 5880 7200 50  0001 C CNN
F 3 "~" H 5950 7200 50  0001 C CNN
	1    5950 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 6850 4400 6850
Wire Wire Line
	4000 6850 4000 6800
Wire Wire Line
	4000 6900 4000 6850
Connection ~ 4000 6850
Wire Wire Line
	4400 6800 4400 6850
Connection ~ 4400 6850
Wire Wire Line
	4400 6850 4000 6850
Wire Wire Line
	4400 6850 4400 6900
Text Label 3450 6500 0    50   ~ 0
+OPAMP_2.5V
Wire Wire Line
	4000 6500 3450 6500
Connection ~ 4000 6500
Text Label 3450 7200 0    50   ~ 0
-OPAMP_2.5V
Wire Wire Line
	4000 7200 3450 7200
Connection ~ 4000 7200
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5FDE93D6
P 4000 6500
F 0 "#FLG03" H 4000 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 6673 50  0000 C CNN
F 2 "" H 4000 6500 50  0001 C CNN
F 3 "~" H 4000 6500 50  0001 C CNN
	1    4000 6500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5FDE93DC
P 4000 7200
F 0 "#FLG04" H 4000 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 7373 50  0000 C CNN
F 2 "" H 4000 7200 50  0001 C CNN
F 3 "~" H 4000 7200 50  0001 C CNN
	1    4000 7200
	-1   0    0    1   
$EndComp
Text Label 5400 3000 0    50   ~ 0
+OPAMP_2.5V
Wire Wire Line
	5400 3000 5250 3000
Text Label 5350 4300 0    50   ~ 0
-OPAMP_2.5V
Wire Wire Line
	5350 4300 5250 4300
Wire Wire Line
	5250 4300 5250 4250
$Comp
L Device:R R?
U 1 1 5FC6CFB8
P 2250 2800
AR Path="/5FC6CFB8" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FC6CFB8" Ref="R32"  Part="1" 
F 0 "R32" V 2043 2800 50  0000 C CNN
F 1 "0" V 2134 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2180 2800 50  0001 C CNN
F 3 "~" H 2250 2800 50  0001 C CNN
	1    2250 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FC6D2E5
P 2250 3100
AR Path="/5FC6D2E5" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FC6D2E5" Ref="R33"  Part="1" 
F 0 "R33" V 2043 3100 50  0000 C CNN
F 1 "0" V 2134 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2180 3100 50  0001 C CNN
F 3 "~" H 2250 3100 50  0001 C CNN
	1    2250 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FC6D859
P 2250 4200
AR Path="/5FC6D859" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FC6D859" Ref="R67"  Part="1" 
F 0 "R67" V 2043 4200 50  0000 C CNN
F 1 "0" V 2134 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2180 4200 50  0001 C CNN
F 3 "~" H 2250 4200 50  0001 C CNN
	1    2250 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FC6DCA9
P 2250 4500
AR Path="/5FC6DCA9" Ref="R?"  Part="1" 
AR Path="/5FB04C67/5FC6DCA9" Ref="R69"  Part="1" 
F 0 "R69" V 2043 4500 50  0000 C CNN
F 1 "0" V 2134 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2180 4500 50  0001 C CNN
F 3 "~" H 2250 4500 50  0001 C CNN
	1    2250 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 4200 2100 4200
Wire Wire Line
	1700 2800 2100 2800
Wire Wire Line
	1100 3100 1700 3100
Connection ~ 1700 3100
Wire Wire Line
	1700 3100 2100 3100
Wire Wire Line
	1100 4500 1700 4500
Connection ~ 1700 4500
Wire Wire Line
	1700 4500 2100 4500
$Comp
L Jumper:SolderJumper_3_Open JP5
U 1 1 5FBB55A7
P 7550 4650
F 0 "JP5" V 7596 4717 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 7505 4717 50  0000 L CNN
F 2 "iq_siggen:50ohm_solder_jumper" H 7550 4650 50  0001 C CNN
F 3 "~" H 7550 4650 50  0001 C CNN
	1    7550 4650
	0    -1   1    0   
$EndComp
Text Label 2550 4200 0    50   ~ 0
CLK_Q_1_P
Text Label 2550 4500 0    50   ~ 0
CLK_Q_1_N
Text Label 2550 2800 0    50   ~ 0
CLK_I_1_P
Text Label 2550 3100 0    50   ~ 0
CLK_I_1_N
Text Label 3950 2900 0    50   ~ 0
CLK_I_2_P
Text Label 3950 3000 0    50   ~ 0
CLK_I_2_N
Text Label 4150 3800 0    50   ~ 0
CLK_Q_2_P
Text Label 4300 4100 0    50   ~ 0
CLK_Q_2_N
Wire Wire Line
	5900 3400 6200 3400
Wire Wire Line
	6500 3400 6900 3400
Wire Wire Line
	6500 3850 6950 3850
Wire Wire Line
	5900 3850 6200 3850
Text Notes 2100 2500 0    50   ~ 0
when terminated:\n+/- 350mV differential \n1.25V common mode voltage
Wire Notes Line
	3100 2700 3100 2550
Text Notes 4450 1800 0    50   ~ 0
gain = 1500/500  = 3
Text Notes 6900 1800 0    50   ~ 0
unterminated pk-pk amplitude = 2.1V\nterminated pk-pk = 1.05V
$EndSCHEMATC
