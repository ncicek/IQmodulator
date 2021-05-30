# IQmodulator

A low cost FPGA-based platform for generating RF signals.
It is implemented with more discrete components than a typical SDR with an "all in one" RF transceiver chip. For example the quadrature double-balanced mixer uses hand-wound trifilar transformers.
 As such, it is intended as a learning platform to show the individual components at play.

# Description
The board is designed to plug into the Lattice MachXO3 FPGA starter board.
The FPGA generates the 10-bit baseband I and Q signals. A MAX5853 DAC generates the baseband analog signals which are filtered with a differential 7th order chebyshev. The FPGA PLL is also used to synthesize the quadrature LO which goes to the quadrature mixer in order to upconvert the baseband up to high frequency.

The RTL uses wishbone modules which are heavily based on material from [Gisselquist Technology's blog posts and sample code](https://zipcpu.com).

# PCB:
![Photo of the IQModulator board](pcb/rf_board/pics/cover.jpg)
