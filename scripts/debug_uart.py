import serial

ser = serial.Serial('COM4', 9600)  # open serial port
refclk = 96e6

def read(addr):
    tx = "A"+format(addr<<2, 'x')+'\n'
    ser.write(tx.encode())
    ser.readline()
    tx = "R"+'\n'
    ser.write(tx.encode())
    rx = ser.readline().decode().rstrip().split('R')[1]
    value = int(rx,16)
    return value

def write(addr, data):
    tx = "A"+format(addr<<2, 'x')+'\n'
    ser.write(tx.encode())
    ser.readline()
    tx = "W"+format(data, 'x')+'\n'
    ser.write(tx.encode())

def set_modulation_amount(val):
    assert val < 100
    write(((0x82<<4)+2), val)

def set_modulation_frequency(hz):
    count = 2**32*hz/refclk
    assert count < 2**32
    write(((0x82<<4)+1), int(round(count)))

def set_carrier_frequency(hz):
    count = 2**32*hz/refclk
    assert count < 2**32
    write(((0x82<<4)+0), int(round(count)))

write(((0x82<<4)+0),1000000)