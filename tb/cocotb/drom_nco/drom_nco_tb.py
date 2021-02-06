import numpy as np
import pandas as pd
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, FallingEdge, RisingEdge

@cocotb.test()
async def drom_nco_tb(dut):
    clock = Clock(dut.clk, 10, units="ns")  # Create a 1us period clock on port clk
    cocotb.fork(clock.start())  # Start the clock

    await FallingEdge(dut.clk)  # Synchronize with the clock
    dut.reset_n <= 0
    dut.t_angle_dat <= 0
    await Timer(100, "ns")
    dut.reset_n <= 1

    await Timer(1000, "ns") #skip the undefined state

    wave = np.empty(shape=1000)
    for i in range (1000):
        dut.t_angle_dat <= dut.t_angle_dat.value + 1
        dut.t_angle_req <= 1
        await RisingEdge(dut.i_nco_req)
        dut.t_angle_req <= 0
        await FallingEdge(dut.i_nco_req)
        wave[i] = dut.i_nco_dat.value.integer
        dut.i_nco_ack <= 1
        

    plt.magnitude_spectrum(wave, color ='green', Fs=100e6, scale='dB') 

    df = pd.DataFrame(data=wave)
    df.to_csv("wave.csv")