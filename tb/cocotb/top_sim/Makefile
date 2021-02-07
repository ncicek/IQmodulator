SIM = verilator
COMPILE_ARGS = --trace

TOPLEVEL_LANG ?= verilog

PWD=$(shell pwd)

export PYTHONPATH := $(PWD)/../model:$(PYTHONPATH)

VERILOG_SOURCES = $(PWD)/../../../rtl/*.v \
					$(PWD)/../../../rtl/debug_bus/*.v

TOPLEVEL := top
MODULE   := top_tb

include $(shell cocotb-config --makefiles)/Makefile.sim
