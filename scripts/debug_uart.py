import serial
import math 

class Device():
    def __init__(self, ser):
        self.ser = ser

    def read(self, addr):
        tx = "A"+format(addr<<2, 'x')+'\n'
        self.ser.write(tx.encode())
        self.ser.readline()
        tx = "R"+'\n'
        self.ser.write(tx.encode())
        rx = self.ser.readline().decode().rstrip().split('R')[1]
        value = int(rx,16)
        print("read ", hex(value), " from ", hex(addr))
        return value

    def write(self, addr, data):
        assert data <= 0xFFFFFFFF
        tx = "A"+format(addr<<2, 'x').lower()+'\n'
        self.ser.write(tx.encode())
        self.ser.readline()
        tx = "W"+format(data, 'x').lower()+'\n'
        self.ser.write(tx.encode())
        print("wrote ", hex(data), " to ", hex(addr))

    def set_modulation_amount(self, val):
        #assert val < 100
        self.write(((0x82<<8)+2), val)

    def set_modulation_frequency(self, hz):
        count = 2**32*hz/refclk
        assert count < 2**32
        self.write(((0x82<<8)+1), int(round(count)))

    def set_carrier_frequency(self, hz):
        count = 2**32*hz/refclk
        assert count < 2**32
        self.write(((0x82<<8)+0), int(round(count)))

    def set_lo_frequency(self, hz):
        self.write(((0x83<<8)+0), int(round(count)))

    def set_i_gain(self, val):
        self.write(((0x82<<8)+3), int(round(val)))

    def set_q_gain(self, val):
        self.write(((0x82<<8)+4), int(round(val)))

    def set_lo_i(self, enable):
        assert isinstance(enable, bool)
        read = self.read((0x81<<8)+0)
        read &= ~(1<<0)
        read |= int(enable)<<0
        self.write(((0x81<<8)+0), read)

    def set_lo_q(self, enable):
        assert isinstance(enable, bool)
        read = self.read((0x81<<8)+0)
        read &= ~(1<<1)
        read |= int(enable)<<1
        self.write(((0x81<<8)+0), read)

class EFB_PLL():
    def __init__(self, dev, efb_wishbone_base_address, ref_clk):
        self.dev = dev
        self.base_address = efb_wishbone_base_address
        self.ref_clk = ref_clk

    def set_fb_div(self, div):
        int_div = int(math.floor(div))
        frac_div = int(round((div - int_div) * 65535))
        assert frac_div <= 65535
        assert int_div <= 127
        
        print(int_div, frac_div)
        self.dev.write(self.base_address + 6, int_div-1) #MC1_DIVA
        
        #CLKOP section Delay value for coarse phase adjustments. For zero delay this value should be equal to the value of MC1_DIVA[6:0].
        #self.dev.write(self.base_address + 2, int_div-1) #MC1_DELA 
        
        self.dev.write(self.base_address + 0, frac_div&0b11111111) #MC1_DIVFBK_FRAC
        self.dev.write(self.base_address + 1, (frac_div>>8)&0b11111111) 
        self.dev.write(self.base_address + 5, 1<<7) #MC1_USE_DESI


ser = serial.Serial('COM8', 7200)  # open serial port
refclk = 12e6

dev = Device(ser)
dev.set_lo_q(False)
efb_pll = EFB_PLL(dev, 0x83<<8, refclk)
efb_pll.set_fb_div(2.00)

dev.set_carrier_frequency(1e6)
dev.set_modulation_frequency(1e3)
dev.set_modulation_amount(0)