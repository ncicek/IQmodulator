import numpy as np
import pandas as pd
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, FallingEdge


#module fm_generator_wb_slave (i_clk, i_reset,  i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr, i_wb_data, o_wb_ack, o_wb_stall, o_wb_data,  o_sample);

@cocotb.test()
async def fm_generator_wb_slave_tb(dut):

    clock = Clock(dut.i_clk, 1, units="ns")  # Create a 1us period clock on port clk
    cocotb.fork(clock.start())  # Start the clock

    await FallingEdge(dut.i_clk)  # Synchronize with the clock
    dut.i_reset <= 1
    await Timer(10, "ns")
    dut.i_reset <= 0

    await Timer(10, "ns") #skip the undefined state

    index = range(1000000)
    columns = ['modulated_carier','o_signal_i','o_signal_q']
    df = pd.DataFrame(index=index, columns=columns)
    for i in range (1000000):
        #print(dut.o_sample)
        df['modulated_carier'][i] = dut.modulated_carier.value.signed_integer
        df['o_signal_i'][i] = dut.o_signal_i.value.signed_integer
        df['o_signal_q'][i] = dut.o_signal_q.value.signed_integer
        await FallingEdge(dut.i_clk)

    df.to_csv("wave.csv")