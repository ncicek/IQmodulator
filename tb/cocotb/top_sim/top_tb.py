import numpy as np
import pandas as pd
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, FallingEdge


#module top(i_ref_clk, i_resetb,			i_wbu_uart_rx, o_wbu_uart_tx,            o_baseband, o_local_oscilator_clk);

@cocotb.test()
async def top_tb(dut):

    clock = Clock(dut.i_ref_clk, 1, units="ns")  # Create a 1us period clock on port clk
    cocotb.fork(clock.start())  # Start the clock

    await FallingEdge(dut.i_ref_clk)  # Synchronize with the clock
    dut.i_resetb <= 0
    await Timer(10, "ns")
    dut.i_resetb <= 1

    await Timer(10, "ns") #skip the undefined state

    wave = np.empty(shape=100000)
    for i in range (100000):
        wave[i] = dut.o_dac_b.value.integer
        await FallingEdge(dut.i_ref_clk)

    df = pd.DataFrame(data=wave)
    df.to_csv("wave.csv")