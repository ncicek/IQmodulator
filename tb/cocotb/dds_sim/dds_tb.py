import numpy as np
import pandas as pd
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, FallingEdge

@cocotb.test()
async def dds_tb(dut):

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

    samples = 1000000

    wave_i = np.empty(shape=samples)
    wave_q = np.empty(shape=samples)
    phase_i = np.empty(shape=samples)
    phase_q = np.empty(shape=samples)
    for i in range (samples):
        #print(dut.o_sample)
        wave_i[i] = dut.o_sample_i.value.signed_integer
        wave_q[i] = dut.o_sample_q.value.signed_integer
        phase_i[i] = dut.qtr_inst.phase_i.value.signed_integer
        phase_q[i] = dut.qtr_inst.phase_q.value.signed_integer
        await FallingEdge(dut.i_clk)

    df = pd.DataFrame({'wave_i': wave_i, 'wave_q': wave_q, 'phase_i':phase_i, 'phase_q':phase_q})
    df.to_csv("wave.csv")