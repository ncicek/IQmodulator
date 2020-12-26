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
L Connector:AudioJack3_Ground_SwitchTR J1
U 1 1 5FE66345
P 3100 4100
F 0 "J1" H 3082 4425 50  0000 C CNN
F 1 "AudioJack3_Ground_SwitchTR" H 3082 4334 50  0000 C CNN
F 2 "sigma_delta_adc_board:STX-3120-5B" H 3100 4100 50  0001 C CNN
F 3 "~" H 3100 4100 50  0001 C CNN
	1    3100 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FE67D81
P 5100 3850
F 0 "R1" H 5170 3896 50  0000 L CNN
F 1 "20k" H 5170 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5030 3850 50  0001 C CNN
F 3 "~" H 5100 3850 50  0001 C CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FE68E56
P 5100 4300
F 0 "R2" H 5170 4346 50  0000 L CNN
F 1 "20k" H 5170 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5030 4300 50  0001 C CNN
F 3 "~" H 5100 4300 50  0001 C CNN
	1    5100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4000 5100 4050
$Comp
L power:+3.3V #PWR04
U 1 1 5FE69606
P 5100 3700
F 0 "#PWR04" H 5100 3550 50  0001 C CNN
F 1 "+3.3V" H 5115 3873 50  0000 C CNN
F 2 "" H 5100 3700 50  0001 C CNN
F 3 "" H 5100 3700 50  0001 C CNN
	1    5100 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FE6A078
P 5100 4450
F 0 "#PWR05" H 5100 4200 50  0001 C CNN
F 1 "GND" H 5105 4277 50  0000 C CNN
F 2 "" H 5100 4450 50  0001 C CNN
F 3 "" H 5100 4450 50  0001 C CNN
	1    5100 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FE6A831
P 4950 4050
F 0 "C1" V 4698 4050 50  0000 C CNN
F 1 "1u" V 4789 4050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4988 3900 50  0001 C CNN
F 3 "~" H 4950 4050 50  0001 C CNN
	1    4950 4050
	0    1    1    0   
$EndComp
Connection ~ 5100 4050
Wire Wire Line
	5100 4050 5100 4150
$Comp
L Amplifier_Operational:MCP6002-xP U1
U 1 1 5FE6BF23
P 6200 4150
F 0 "U1" H 6200 4517 50  0000 C CNN
F 1 "MCP6002-xP" H 6200 4426 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6200 4150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 6200 4150 50  0001 C CNN
	1    6200 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5FE849EB
P 6450 2650
F 0 "#PWR010" H 6450 2400 50  0001 C CNN
F 1 "GND" H 6455 2477 50  0000 C CNN
F 2 "" H 6450 2650 50  0001 C CNN
F 3 "" H 6450 2650 50  0001 C CNN
	1    6450 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5FE850C8
P 6450 2050
F 0 "#PWR09" H 6450 1900 50  0001 C CNN
F 1 "+3.3V" H 6465 2223 50  0000 C CNN
F 2 "" H 6450 2050 50  0001 C CNN
F 3 "" H 6450 2050 50  0001 C CNN
	1    6450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2350 5900 2600
$Comp
L power:+3.3V #PWR07
U 1 1 5FE86C4A
P 5900 2050
F 0 "#PWR07" H 5900 1900 50  0001 C CNN
F 1 "+3.3V" H 5915 2223 50  0000 C CNN
F 2 "" H 5900 2050 50  0001 C CNN
F 3 "" H 5900 2050 50  0001 C CNN
	1    5900 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FE870DF
P 5900 2600
F 0 "#PWR08" H 5900 2350 50  0001 C CNN
F 1 "GND" H 5905 2427 50  0000 C CNN
F 2 "" H 5900 2600 50  0001 C CNN
F 3 "" H 5900 2600 50  0001 C CNN
	1    5900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2050 5900 2050
Connection ~ 5900 2050
Wire Wire Line
	5700 2350 5900 2350
Connection ~ 5900 2350
Wire Wire Line
	5800 4400 6550 4400
Wire Wire Line
	6550 4400 6550 4150
Wire Wire Line
	6550 4150 6500 4150
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5FE8A829
P 4550 4050
F 0 "JP1" V 4596 4117 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 4505 4117 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 4550 4050 50  0001 C CNN
F 3 "~" H 4550 4050 50  0001 C CNN
	1    4550 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 4050 4750 4050
$Comp
L power:GND #PWR02
U 1 1 5FE902D8
P 3550 4600
F 0 "#PWR02" H 3550 4350 50  0001 C CNN
F 1 "GND" H 3555 4427 50  0000 C CNN
F 2 "" H 3550 4600 50  0001 C CNN
F 3 "" H 3550 4600 50  0001 C CNN
	1    3550 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4000 3550 4000
Wire Wire Line
	3550 4000 3550 4600
Wire Wire Line
	3300 4100 4350 4100
Wire Wire Line
	4350 4100 4350 3850
Wire Wire Line
	4350 3850 4550 3850
Wire Wire Line
	3300 4300 4550 4300
Wire Wire Line
	4550 4300 4550 4250
Wire Wire Line
	6550 4150 7100 4150
Connection ~ 6550 4150
$Comp
L Device:R R3
U 1 1 5FE99772
P 7700 4700
F 0 "R3" H 7770 4746 50  0000 L CNN
F 1 "1k" H 7770 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7630 4700 50  0001 C CNN
F 3 "~" H 7700 4700 50  0001 C CNN
	1    7700 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FE99778
P 7700 5100
F 0 "R4" H 7770 5146 50  0000 L CNN
F 1 "1k" H 7770 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7630 5100 50  0001 C CNN
F 3 "~" H 7700 5100 50  0001 C CNN
	1    7700 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 5FE9977F
P 7700 4550
F 0 "#PWR011" H 7700 4400 50  0001 C CNN
F 1 "+3.3V" H 7715 4723 50  0000 C CNN
F 2 "" H 7700 4550 50  0001 C CNN
F 3 "" H 7700 4550 50  0001 C CNN
	1    7700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FE99785
P 7700 5250
F 0 "#PWR012" H 7700 5000 50  0001 C CNN
F 1 "GND" H 7705 5077 50  0000 C CNN
F 2 "" H 7700 5250 50  0001 C CNN
F 3 "" H 7700 5250 50  0001 C CNN
	1    7700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4850 7700 4900
Wire Wire Line
	7700 4900 8050 4900
Wire Wire Line
	8700 4900 8700 4350
$Comp
L Device:C C6
U 1 1 5FE9AC58
P 8050 4700
F 0 "C6" H 7935 4654 50  0000 R CNN
F 1 "0.1u" H 7935 4745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8088 4550 50  0001 C CNN
F 3 "~" H 8050 4700 50  0001 C CNN
	1    8050 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5FE9B826
P 8050 5100
F 0 "C7" H 7935 5054 50  0000 R CNN
F 1 "0.1u" H 7935 5145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8088 4950 50  0001 C CNN
F 3 "~" H 8050 5100 50  0001 C CNN
	1    8050 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 4950 7700 4900
Connection ~ 7700 4900
Wire Wire Line
	8050 4850 8050 4900
Connection ~ 8050 4900
Wire Wire Line
	8050 4900 8050 4950
$Comp
L power:GND #PWR014
U 1 1 5FE9DC28
P 8050 5250
F 0 "#PWR014" H 8050 5000 50  0001 C CNN
F 1 "GND" H 8055 5077 50  0000 C CNN
F 2 "" H 8050 5250 50  0001 C CNN
F 3 "" H 8050 5250 50  0001 C CNN
	1    8050 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 5FE9DE1D
P 8050 4550
F 0 "#PWR013" H 8050 4400 50  0001 C CNN
F 1 "+3.3V" H 8065 4723 50  0000 C CNN
F 2 "" H 8050 4550 50  0001 C CNN
F 3 "" H 8050 4550 50  0001 C CNN
	1    8050 4550
	1    0    0    -1  
$EndComp
Text Label 8500 4900 0    50   ~ 0
Vref
$Comp
L Device:R R5
U 1 1 5FE9E7FB
P 7900 4150
F 0 "R5" V 7693 4150 50  0000 C CNN
F 1 "R" V 7784 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7830 4150 50  0001 C CNN
F 3 "~" H 7900 4150 50  0001 C CNN
	1    7900 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 4150 8300 4150
$Comp
L Device:R R6
U 1 1 5FE9EC79
P 8800 3700
F 0 "R6" V 8593 3700 50  0000 C CNN
F 1 "R" V 8684 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8730 3700 50  0001 C CNN
F 3 "~" H 8800 3700 50  0001 C CNN
	1    8800 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3700 8450 3700
Wire Wire Line
	8450 3700 8450 4150
Connection ~ 8450 4150
$Comp
L Device:C C8
U 1 1 5FEA0840
P 8450 4300
F 0 "C8" H 8335 4254 50  0000 R CNN
F 1 "C" H 8335 4345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8488 4150 50  0001 C CNN
F 3 "~" H 8450 4300 50  0001 C CNN
	1    8450 4300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5FEA0D7A
P 8450 4450
F 0 "#PWR015" H 8450 4200 50  0001 C CNN
F 1 "GND" H 8455 4277 50  0000 C CNN
F 2 "" H 8450 4450 50  0001 C CNN
F 3 "" H 8450 4450 50  0001 C CNN
	1    8450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4900 8450 4900
Wire Wire Line
	5100 4050 5900 4050
Wire Wire Line
	5900 4250 5800 4250
Wire Wire Line
	5800 4250 5800 4400
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5FEB3E19
P 4550 4600
F 0 "J2" H 4468 4817 50  0000 C CNN
F 1 "Conn_01x02" H 4468 4726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4550 4600 50  0001 C CNN
F 3 "~" H 4550 4600 50  0001 C CNN
	1    4550 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 4600 4750 4050
Connection ~ 4750 4050
Wire Wire Line
	4750 4050 4700 4050
$Comp
L power:GND #PWR03
U 1 1 5FEB90B7
P 4750 4700
F 0 "#PWR03" H 4750 4450 50  0001 C CNN
F 1 "GND" H 4755 4527 50  0000 C CNN
F 2 "" H 4750 4700 50  0001 C CNN
F 3 "" H 4750 4700 50  0001 C CNN
	1    4750 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5FEB9DB6
P 7100 4150
F 0 "TP5" H 7158 4268 50  0000 L CNN
F 1 "TestPoint" H 7158 4177 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7300 4150 50  0001 C CNN
F 3 "~" H 7300 4150 50  0001 C CNN
	1    7100 4150
	1    0    0    -1  
$EndComp
Connection ~ 7100 4150
Wire Wire Line
	7100 4150 7750 4150
$Comp
L Connector:TestPoint TP6
U 1 1 5FEBA2E9
P 8300 4150
F 0 "TP6" H 8358 4268 50  0000 L CNN
F 1 "TestPoint" H 8358 4177 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8500 4150 50  0001 C CNN
F 3 "~" H 8500 4150 50  0001 C CNN
	1    8300 4150
	1    0    0    -1  
$EndComp
Connection ~ 8300 4150
Wire Wire Line
	8300 4150 8450 4150
$Comp
L Connector:TestPoint TP7
U 1 1 5FEBAB05
P 8450 4900
F 0 "TP7" H 8508 5018 50  0000 L CNN
F 1 "TestPoint" H 8450 4800 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8650 4900 50  0001 C CNN
F 3 "~" H 8650 4900 50  0001 C CNN
	1    8450 4900
	1    0    0    -1  
$EndComp
Connection ~ 8450 4900
Wire Wire Line
	8450 4900 8700 4900
Text Label 8950 4150 0    50   ~ 0
LVDS_P
Text Label 8950 4350 0    50   ~ 0
LVDS_N
Text Label 9050 3700 0    50   ~ 0
FB
$Comp
L power:GND #PWR06
U 1 1 5FEE9C39
P 5800 5150
F 0 "#PWR06" H 5800 4900 50  0001 C CNN
F 1 "GND" H 5805 4977 50  0000 C CNN
F 2 "" H 5800 5150 50  0001 C CNN
F 3 "" H 5800 5150 50  0001 C CNN
	1    5800 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5FEEA4B8
P 5800 5150
F 0 "TP1" H 5858 5268 50  0000 L CNN
F 1 "TestPoint" H 5858 5177 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6000 5150 50  0001 C CNN
F 3 "~" H 6000 5150 50  0001 C CNN
	1    5800 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5FEEB0B2
P 5950 5150
F 0 "TP2" H 6008 5268 50  0000 L CNN
F 1 "TestPoint" H 6008 5177 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6150 5150 50  0001 C CNN
F 3 "~" H 6150 5150 50  0001 C CNN
	1    5950 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5FEEBACC
P 6100 5150
F 0 "TP3" H 6158 5268 50  0000 L CNN
F 1 "TestPoint" H 6158 5177 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6300 5150 50  0001 C CNN
F 3 "~" H 6300 5150 50  0001 C CNN
	1    6100 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5FEEBC9E
P 6250 5150
F 0 "TP4" H 6308 5268 50  0000 L CNN
F 1 "TestPoint" H 6308 5177 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6450 5150 50  0001 C CNN
F 3 "~" H 6450 5150 50  0001 C CNN
	1    6250 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5150 6100 5150
Connection ~ 5800 5150
Connection ~ 5950 5150
Wire Wire Line
	5950 5150 5800 5150
Connection ~ 6100 5150
Wire Wire Line
	6100 5150 5950 5150
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5FEED954
P 3600 2400
F 0 "J3" H 3518 2617 50  0000 C CNN
F 1 "Conn_01x02" H 3518 2526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3600 2400 50  0001 C CNN
F 3 "~" H 3600 2400 50  0001 C CNN
	1    3600 2400
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 5FEEE5D5
P 4500 2300
F 0 "#PWR016" H 4500 2150 50  0001 C CNN
F 1 "+3.3V" H 4515 2473 50  0000 C CNN
F 2 "" H 4500 2300 50  0001 C CNN
F 3 "" H 4500 2300 50  0001 C CNN
	1    4500 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FEEED66
P 4500 2600
F 0 "#PWR017" H 4500 2350 50  0001 C CNN
F 1 "GND" H 4505 2427 50  0000 C CNN
F 2 "" H 4500 2600 50  0001 C CNN
F 3 "" H 4500 2600 50  0001 C CNN
	1    4500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2400 4300 2400
Wire Wire Line
	4300 2400 4300 2300
Wire Wire Line
	4300 2300 4450 2300
Wire Wire Line
	4300 2500 4300 2600
Wire Wire Line
	4300 2600 4450 2600
Wire Wire Line
	3800 2500 4300 2500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FEF4E37
P 4300 2300
F 0 "#FLG0101" H 4300 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 2473 50  0000 C CNN
F 2 "" H 4300 2300 50  0001 C CNN
F 3 "~" H 4300 2300 50  0001 C CNN
	1    4300 2300
	1    0    0    -1  
$EndComp
Connection ~ 4300 2300
Wire Wire Line
	8700 4350 9800 4350
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FEFB88C
P 4300 2600
F 0 "#FLG0102" H 4300 2675 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 2773 50  0000 C CNN
F 2 "" H 4300 2600 50  0001 C CNN
F 3 "~" H 4300 2600 50  0001 C CNN
	1    4300 2600
	-1   0    0    1   
$EndComp
Connection ~ 4300 2600
NoConn ~ 3300 4200
NoConn ~ 3300 4400
$Comp
L Amplifier_Operational:MCP6002-xP U1
U 3 1 5FF6525D
P 6550 2350
F 0 "U1" H 6508 2396 50  0000 L CNN
F 1 "MCP6002-xP" H 6508 2305 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6550 2350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 6550 2350 50  0001 C CNN
	3    6550 2350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xP U1
U 2 1 5FF6B5AE
P 8450 2250
F 0 "U1" H 8450 2617 50  0000 C CNN
F 1 "MCP6002-xP" H 8450 2526 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8450 2250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 8450 2250 50  0001 C CNN
	2    8450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2350 8050 2350
Wire Wire Line
	8050 2350 8050 2500
Wire Wire Line
	8050 2500 8750 2500
Wire Wire Line
	8750 2500 8750 2250
Text Label 7950 2150 0    50   ~ 0
Vref
Wire Wire Line
	8150 2150 7950 2150
$Comp
L Device:C C4
U 1 1 5FE8584C
P 5900 2200
F 0 "C4" H 5785 2154 50  0000 R CNN
F 1 "1u" H 5785 2245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5938 2050 50  0001 C CNN
F 3 "~" H 5900 2200 50  0001 C CNN
	1    5900 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5FE87AE2
P 5700 2200
F 0 "C2" H 5585 2154 50  0000 R CNN
F 1 "1u" H 5585 2245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5738 2050 50  0001 C CNN
F 3 "~" H 5700 2200 50  0001 C CNN
	1    5700 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5FF89115
P 4450 2450
F 0 "C3" H 4565 2496 50  0000 L CNN
F 1 "10u" H 4565 2405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4488 2300 50  0001 C CNN
F 3 "~" H 4450 2450 50  0001 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5FF89958
P 4650 2450
F 0 "C5" H 4765 2496 50  0000 L CNN
F 1 "C" H 4765 2405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4688 2300 50  0001 C CNN
F 3 "~" H 4650 2450 50  0001 C CNN
	1    4650 2450
	1    0    0    -1  
$EndComp
Connection ~ 4450 2300
Wire Wire Line
	4450 2300 4500 2300
Connection ~ 4450 2600
Wire Wire Line
	4450 2600 4500 2600
Wire Wire Line
	4650 2300 4500 2300
Connection ~ 4500 2300
Wire Wire Line
	4650 2600 4500 2600
Connection ~ 4500 2600
NoConn ~ 3100 4600
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 5FFBA911
P 10500 4050
F 0 "J4" H 10550 4467 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 10550 4376 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 10500 4050 50  0001 C CNN
F 3 "~" H 10500 4050 50  0001 C CNN
	1    10500 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FFBE441
P 10300 4250
F 0 "#PWR01" H 10300 4000 50  0001 C CNN
F 1 "GND" H 10305 4077 50  0000 C CNN
F 2 "" H 10300 4250 50  0001 C CNN
F 3 "" H 10300 4250 50  0001 C CNN
	1    10300 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5FFBE898
P 10800 4250
F 0 "#PWR018" H 10800 4000 50  0001 C CNN
F 1 "GND" H 10805 4077 50  0000 C CNN
F 2 "" H 10800 4250 50  0001 C CNN
F 3 "" H 10800 4250 50  0001 C CNN
	1    10800 4250
	1    0    0    -1  
$EndComp
Text Notes 10100 4250 0    50   ~ 0
H1\nH3\nJ2\nJ1\nGND
Text Notes 10900 4250 0    50   ~ 0
H2\nJ3\nK1\nK4\nGND
Wire Wire Line
	11150 3700 11150 4050
Wire Wire Line
	11150 4050 10800 4050
Wire Wire Line
	8950 3700 11150 3700
Wire Wire Line
	10150 4150 10150 3950
Wire Wire Line
	10150 3950 10300 3950
Wire Wire Line
	8450 4150 10150 4150
Wire Wire Line
	9800 4350 9800 3850
Wire Wire Line
	9800 3850 10300 3850
Wire Wire Line
	10300 4150 10200 4150
Wire Wire Line
	10200 4150 10200 4500
Wire Wire Line
	10200 4500 9700 4500
Wire Wire Line
	10800 3950 10950 3950
Wire Wire Line
	10950 3950 10950 4600
Wire Wire Line
	10950 4600 9700 4600
Text Label 9700 4600 0    50   ~ 0
SPI_CLK
Text Label 9700 4500 0    50   ~ 0
SPI_MOSI
NoConn ~ 10800 3850
NoConn ~ 10800 4150
NoConn ~ 10300 4050
$Comp
L Connector:TestPoint TP9
U 1 1 5FE87F09
P 9700 4600
F 0 "TP9" H 9758 4718 50  0000 L CNN
F 1 "TestPoint" H 9758 4627 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9900 4600 50  0001 C CNN
F 3 "~" H 9900 4600 50  0001 C CNN
	1    9700 4600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5FE87472
P 9700 4500
F 0 "TP8" H 9758 4618 50  0000 L CNN
F 1 "TestPoint" H 9758 4527 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9900 4500 50  0001 C CNN
F 3 "~" H 9900 4500 50  0001 C CNN
	1    9700 4500
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
