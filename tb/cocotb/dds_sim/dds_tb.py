import numpy as np
import pandas as pd
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, FallingEdge

@cocotb.test()
async def dds_tb(dut):
    """ Test that d propagates to q """

    clock = Clock(dut.i_clk, 1, units="ns")  # Create a 1us period clock on port clk
    cocotb.fork(clock.start())  # Start the clock

    await FallingEdge(dut.i_clk)  # Synchronize with the clock
    dut.i_increment <= 500000
    dut.i_reset <= 1
    dut.i_update <= 1
    dut.i_ce <= 1
    await Timer(10, "ns")
    dut.i_reset <= 0

    await Timer(10, "ns") #skip the undefined state

    wave = np.empty(shape=100000)
    for i in range (100000):
        #print(dut.o_sample)
        wave[i] = dut.o_sample.value.signed_integer
        await FallingEdge(dut.i_clk)

    df = pd.DataFrame(data=wave)
    df.to_csv("wave.csv")